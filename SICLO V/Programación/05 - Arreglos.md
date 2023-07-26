# 5. Arreglos

Un arreglo es una estructura homogénea
que se caracteriza porque

1. Todos sus elementos son del mismo tipo.
2. Todos sus elementos tienen el mismo nombre.
3. Para referirnos a un elemento en particular
se hace con el nombre del arreglo y con indices cerrados
entre corchetes "[]". Estos indices nos da la posición
el elemento que ocupa en el arreglo.

En matemáticas un vector se escribe como
$\bold{a_n} = [a_1\quad a2 \quad \cdots \quad a_n]$

En algoritmos será

```Javascript
variables {tipo de variable}: a[1]...a[n]
```

Este tendrá n, elementos del mismo tipo
para acceder al valor de este vector en la posición
$i$ será ```vector[i]```

Ejemplo

```Javascript
variables enteras: a[1]...a[4]
a[1] <- 1
a[2] <- 8
a[3] <- 9
a[4] <- -1

ESCRIBIR: a[1], a[3], a[2], a[4]
//salida
> 198-1
```

## EJERCICIOS 5.1

### Ejercicio 5.1.1

Escribir un algoritmo para almacenar en un
vector de n elementos los n primeros números impares.
e imprimirlo en forma de vector

ANÁLISIS  
SALIDA: el vector de los n primeros impares  
ENTRADA: el valor de N  
PROCESO: ___

ALGORITMO

```javascript
variables ENTERAS: n, impares[1]..impares[n], pos

LEER: n

PARA pos DESDE 1 HASTA N HACER 
    imp[pos] <- 2 * pos - 1
FIN_PARA

PARA pos DESDE 1 HASTA N HACER
    ESCRIBIR: "imp[", pos, "] = ", imp[pos]
FIN_POR
```

### Ejercicio 5.1.2

Escribir un algoritmo para ingresar números a un vector de n elementos, luego determinar ¿Cuál es el
número de mayor valor ingresado?

ANÁLISIS  
SALIDA: mayor valor valor y su posición  
ENTRADA: El valor de N y los números  
PROCESO: __

ALGORITMO

```Javascript
variables ENTERAS: i, pos_mayor, mayor, nums[1]...nums[N], N
LEER: N

PARA i DESDE 1 HASTA N HACER
    LEER: nums[i]
FIN_PARA

num_mayor <- nums[1]
pos_mayor <- 1

PARA i DESDE 2 HASTA N HACER
    SI nums[i] > mayor HACER
        num_mayor <- nums[i]
        pos_mayor <- i
    FIN_SI
FIN_PARA

ESCRIBIR: "nums[", pos_mayor, "] = ", num_mayor, " Es el número mayor."
```

### Ejercicio  5.1.3

Escribir un algoritmo para ingresar números a un
vector de $N$ elementos, luego intercambiar el elemento
de mayor valor con el elemento de menor valor.

ANÁLISIS  
SALIDA: El vector con los números intercambiados  
ENTRADA: La cantidad N de elementos  
PROCESO: __

ALGORITMO

```javascript
variables ENTERAS: menor, pos_menor, mayor, pos_mayor, N, nums[1]...nums[N], i

LEER: N

PARA i DESDE 1 HASTA N HACER
    LEER: nums[i]
FIN_PARA

menor <- nums[1]
pos_menor <- 1
mayor <- nums[1]
pos_mayor <- [1]

PARA i DESDE 2 HASTA N HACER
    SI mayor < nums[i] HACER
        mayor <- nums[i]
        pos_mayor <- i
    FIN_SI

    SI menor > nums[i] HACER
        menor <- nums[i]
        pos_menor <- i
    FIN_SI
FIN_SI

nums[pos_menor] <- mayor
nums[pos_mayor] <- menor

PARA i DESDE 1 HASTA N HACER
    ESCRIBIR: "nums[", i, "] = ", nums[i]
FIN_PARA
```

## 5.2 Algoritmos de ordenamiento

### 5.2.1 De forma ascendente (Descendente es similar)

ANÁLISIS

1. En un arreglo de longitud $n$ se busca el mayor valor.
2. El mayor valor se coloca en la posición $n$ del arreglo
y el valor n se coloca en la posición i.
3. Se repite (1) y (2) para $n - 1$ hasta la posición inicial.

ALGORITMO

```javascript
variables REALES: nums[1]...nums[N], N, mayor, i, pos_mayor, n

LEER: N

PARA i DESDE 1 HASTA N HACER
    LEER: a[i]
FIN_PARA

n <- N

MIENTRAS N > 1 HACER
    mayor <- nums[1]
    pos_mayor <- 1
    PARA i DESDE 2 HASTA N HACER
        SI mayor < nums[i] ENTONCES
            mayor <- nums[i]
            pos_mayor <- i
        FIN_SI
    FIN_PARA
    nums[pos_mayor] <- nums[N]
    nums[N] <- mayor
    N <- N - 1
FIN_MIENTRAS

// Mostrando el resultado
PARA i DESDE 1 HASTA n HACER
    ESCRIBIR: "nums[", i, "] = ", nums[i], ", "
FIN_PARA
```

### 5.2.2 Burbuja simple

Para ordenar un vector de $N$ elementos
en forma ascendente (descendente).

ANÁLISIS

1. Se compara el primer elemento con el segundo, si
el primero es mayor (menor) se intercambia.

2. Se intercambia el segundo con el tercero, si el
segundo es mayor (menor), se intercambia y así sucesivamente hasta completar el vector. Con esto se logra poner
el mayor (menor) elemento en la posición N.

3. Se repiten los pasos anteriores para los $N - 1, ... N-2, ... 1$ elementos.

ALGORITMO

```Javascript
variables REALES: nums[1]...nums[N], N, aux, i, pos, j, n

LEER: N

PARA i DESDE 1 HASTA N HACER
    LEER: a[i]
FIN_PARA

n <- N

MIENTRAS N > 1 HACER
    PARA i DESDE 1 HASTA n - 1 HACER
        SI nums[i] < nums[i + 1] ENTONCES
            aux <- nums[i]
            nums[i] <- nums[i + 1]
            nums[i + 1] <- aux
        FIN_SI
    FIN_PARA
FIN_MIENTRAS

// Mostrando el resultado
PARA i DESDE 1 HASTA n HACER
    ESCRIBIR: "nums[", i, "] = ", nums[i], ", "
FIN_PARA    
```
