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

## 2. Estructuras repetitivas anidadas

### Ejercicios 2

#### Ejercicio 2.2

Escribir un algoritmo para imprimir la siguiente salida

1  
2 2  
3 3 3  
4 4 4 4  
...  
n n n n ... n

ANÁLISIS
SALIDA: el número 1 una vez, ...  
ENTRADA: el número n  
PROCESO: ...

ALGORITMO

```javascript
variables ENTERAS: n, veces, número
LEER: n

número <- 1
MIENTRAS número <= n HACER
    veces <- 1
    MIENTRAS veces <= número HACER
        ESCRIBIR: número
        veces <- veces + 1
    FIN_MIENTRAS
    número <- número + 1
FIN_MIENTRAS
```

#### Ejercicio 2.3

Escribir un algoritmo para obtener el número n, n veces
el número (n - 1), (n - 1) veces..., el número 1, 1 vez.

ANÁLISIS:
SALIDA: El número n, n veces ...  
ENTRADA: el número n
PROCESO: ...

ALGORITMO

```javascript
variables ENTERAS: n, veces
LEER: n

MIENTRAS n >= 1 HACER
    veces <- n
    MIENTRAS veces >= 1
        ESCRIBIR: n
        veces <- veces - 1
    FIN_MIENTRAS
    n <- n - 1
FIN_MIENTRAS
```

#### Ejercicio 2.4

Escribir un algoritmo para obtener el número n, una vez; el número n - 1, 2 vece; el número n-2, tres veces y así sucesivamente hasta el número.

ANÁLISIS:
SALIDA: El número n, 1 veces ..
ENTRADA: el número n
PROCESO: ...

ALGORITMO

```javascript
variables ENTERAS: n, veces, contador
LEER: n
número <- n

MIENTRAS número >= 1 HACER
    veces <- 1
    MIENTRAS veces <= n - número + 1 HACER
        ESCRIBIR: número
        veces = veces + 1
    FIN_MIENTRAS
    número = número - 1
FIN_MIENTRAS

```

#### Ejercicio 2.5

Escribir un algoritmo para escribir un cuadrado
con asteriscos cuyo lado será n asteriscos.

ANÁLISIS:
SALIDA: El cuadrado con asteriscos  
ENTRADA el número n  
PROCESO: ...  

ALGORITMO

```javascript
variables ENTERAS: veces, n, lineas
LEER: n
lineas <- n

MIENTRAS lineas <= n HACER
    veces <- 1
    MIENTRAS veces <= n HACER
        escribir: "*"
        veces <- veces + 1
    FIN_MIENTRAS
    ESCRIBIR: salto de linea
    lineas <- lineas + 1
FIN_MIENTRAS
```

#### Ejercicio 2.6

Escriba un algoritmo para imprimir triángulo de n asteriscos
de altura y de base como en la figura (para n = 4)

```javascript
*
* *
* * *
* * * *
```

ANÁLISIS

SALIDA: triángulo  
ENTRADA: n  
PROCESO:---  

ALGORITMO

```javascript
variables ENTERAS: n, veces, linea
LEER: n
linea <- n

MIENTRAS linea <= n HACER
    veces <- 1
    
    MIENTRAS veces <= linea
        ESCRIBIR: "*"
        veces = veces + 1
    FIN_MIENTRAS
    ESCRIBIR: salto de linea
    linea = linea + 1
FIN_MIENTRAS
    
```

#### Ejercicio 2.7

Escriba un algoritmo para imprimir triángulo de n asteriscos
de altura y de base como en la figura (para n = 4)

```javascript
      *
    * *
  * * *
* * * *
```

ANÁLISIS

SALIDA: triángulo  
ENTRADA: n  
PROCESO:---  

ALGORITMO

```javascript
variables ENTERAS: n, fila, columna
LEER: n
linea <- linea + 1

MIENTRAS linea <= n HACER
    MIENTRAS columna <= n HACER
        SI linea + columna > n HACER
            ESCRIBIR: "*"
        SINO
            ESCRIBIR: " "
        FIN_SI
    FIN_MIENTRAS
    ESCRIBIR: salto de linea
    linea = linea + 1
    columna = columna + 1
FIN_MIENTRAS
    
```

#### Ejercicios 2.8

Un número, es número primo cuando solo tiene dos divisores;
así mismo y la unidad. EScribir un algoritmo para calcular
la cantidad de divisores de un número y de acuerdo a eso indicar
si es número primo o no

ANÁLISIS  
SALIDA: si es primo o no.  
ENTRADA: el número n.  
PROCESOS: ir comprobando número por número hasta n
para ver si es primo o no

ALGORITMO

```javascript
variables ENTERAS: num, cantidad_divisores, divisor
LEER: num
divisor <- 1
cantidad_divisores = 0

MIENTRAS divisor <= n HACER
    SI MÓDULO(n/divisor) = 0 ENTONCES
        cantidad_divisores = cantidad_divisores + 1
    FIN_SI
    divisor = divisor + 1
FIN_MIENTRAS

SI cantidad_divisores > 2 ENTONCES
    ESCRIBIR: "No es primo"
SINO
    ESCRIBIR: "Es primo"
FIN_SI
```

#### Ejercicio 2.9

Escribir un algoritmo para obtener los n primeros números
primos.

ANÁLISIS
SALIDA: los n primeros números primos  
ENTRADA: n  
PROCESOS: ir comprobando si n es primo o no
como el algoritmo anterior  

ALGORITMO

```javascript
variables ENTERAS: n, divisor, cantidad_primos, numero
variables LÓGICAS: es_primo
LEER: n
cantidad_primos <- 0
numero <- 2

MIENTRAS cantidad_primos <= n HACER
    divisor <- 2
    es_primo <- verdadero
    MIENTRAS divisor < numero && es_primo HACER
        SI MODULO(numero/divisor) = 0 ENTONCES
            es_primo <- falso
        FIN_SI
        divisor <- divisor + 1
    FIN_MIENTRAS

    SI es_primo ENTONCES
        ESCRIBIR: numero, ", "
        cantidad_primos <- cantidad_primos + 1
    FIN_SI
    numero = numero + 1
FIN_MIENTRAS
```

#### Ejercicio 2.10

Un numero entero es centro numérico cuando divide a un grupo de números
naturales que empiecen el 1, en 2 subgrupos cuyas sumas de
elementos es igual. Ejemplo, el número 6 divide al grupo
de números del 1 al 8 en dos subgrupos; el primero del 1 al 5
cuya suma de elementos es 15 (1 + 2 + 3 + 4 + 5 = 15) y
el segundo del 7 al 8 cuya suma es 15(7 + 8 = 15);
por lo tanto 6 es centro numérico.

ANÁLISIS
SALIDA: Si el número es centro numérico o no  
ENTRADA: el número n  
PROCESO: sumar todos los números a la izquierda de n
ir sumando uno a uno desde n + 1 hasta que sea igual
o mayor que la suma de la izquierda, si la suma es igual
es centro si no, no es centro numérico.

ALGORITMO

```javascript
variables ENTERAS: n, suma_izquierda, suma_derecha
LEER: n

suma_izquierda <- 1/2 * (n - 1) * n
suma_derecha = 0

MIENTRAS suma_derecha < suma_izquierda HACER
    n = n + 1
    suma_derecha <- suma_derecha + n
FIN_MIENTRAS

SI suma_derecha <- suma_izquierda ENTONCES
    ESCRIBIR: "Si es centro numérico"
SI_NO
    ESCRIBIR: "No es centro numérico"
FIN_SI
```

## 3. Estructuras en Matlab

```Matlab
while [proposiciones]
    [instrucciones]
end
```

### Ejercicios 3

#### Ejercicio 3.1 (es el mismo que 2.10)

```Matlab
n = input("Ingrese n: ");

sum_izquierda = 1/2 * (n - 1) * n;
sum_derecha = 0;

while sum_derecha < sum_izquierda
    n = n + 1;
    sum_derecha = sum_derecha + n;
end

if sum_derecha == sum_izquierda
    disp("Es centro numérico")
else
    disp("No es centro numérico")
end
```

#### Ejercicio 3.2

Escribir un algoritmos y su programa para obtener los n primeros centros
numéricos

ANÁLISIS  
SALIDA: los n primeros centro numéricos  
ENTRADA: la cantidad n de centros numéricos  
PROCESO: ---

ALGORITMO

```javascript
variables ENTERAS: n, sum_izq, sum_der, cantidad, natural, natural_suma
LEER n:
cantidad <- 0
natural <- 1

MIENTRAS cantidad < n HACER
    sum_izq <- 1/2 * natural * (natural - 1)
    sum_der <- 0
    natural_sum <- natural
    
    MIENTRAS sum_der < sum_izq HACER
        natural_sum <- natural_sum + 1
        sum_der <- sum_der + natural_sum
    FIN_MIENTRAS
    
    SI sum_der = sum_izq ENTONCES
        ESCRIBIR: natural, ", "
        cantidad <- cantidad + 1
    SINO
    natural <- natural + 1
FIN_MIENTRAS

```

MATLAB

```Matlab
n = input('ingrese la cantidad: ');

cantidad = 0;
natural = 1;

while cantidad < n
    sum_izq = 1/2 * natural * (natural - 1);
    sum_der = 0;
    natural_sum = natural;

    while sum_der < sum_izq
        natural_sum = natural_sum + 1;
        sum_der = sum_der + natural_sum;
    end

    if sum_der == sum_izq
        fprintf("%i, ", natural);
        cantidad = cantidad + 1;
    end
    natural = natural + 1;
end
```

#### Ejercicio 3.3

Escriba un algoritmo y su programa para pedir un
número e invertirlo: Ejemplo si dan 8769
saldrá 9678.

ANÁLISIS
ENTRADA: El número n
SALIDA: El número n invertido
PROCESO: ---

Algoritmo

```javascript
variables ENTERAS: numero, invertido
LEER: numero

invertido <- 0

MIENTRAS numero = 0 HACER
    invertido <- invertido * 10 + MODULO(numero/10)
    numero <- ENTERO(NUMERO/10)
FIN_MIENTRAS

ESCRIBIR: numero
```

## 4. Formato en Matlab

### 4.1 Instrucción ```fprintf```

Se utiliza para imprimir variables con formato

```javascript
    frpinft('[formatos, texto y salto de linea]', [variables])
```

donde:  
textos(s): se imprime en la pantalla en forma idéntica  
formato(s): se usa para las variables y tiene los siguientes elementos

$$\%\left\{\begin{matrix}
    + \\
    - \\
    0 \\
\end{matrix}\right\} n.m
\left\{\begin{matrix}
    i \\
    f \\
    e \\
    g \\
\end{matrix}\right\}
$$

|Símbolo|sirve para|
|---|---|
|%|Indicador de formato|
|+|Imprime el signo|
|-|alineación a la izquierda|
|0|rellena de ceros a la izquierda|
n|número total de columnas
f|formato real
e|formato  exponencial
g|el formato mas corto entre real y exponencial
\n|Salto de linea
