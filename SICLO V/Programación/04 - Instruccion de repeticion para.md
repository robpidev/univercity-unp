# Instrucción de repetición ```PARA ... FIN_PARA```

Cuando en un siclo repetitivo, las repeticiones es un
predeterminado de veces, podemos usar la instrucción para

```javascript
PARA [contador] DESDE [valor inicial] HASTA [valor final] PASO [incremento] HACER
    [instrucciones] // Esto se repite hasta que contador >= valor vinal
FIN_PARA
```

## 4.1 EJERCICIOS

### Ejercicio 4.1.1

Un número primo es aquel que solo tiene dos divisores, el mismo
y la unidad. Calcule la cantidad de divisores y determinar
si un número dado es primo o no.

ANÁLISIS:  
ENTRADA: Número  
SALIDA: Si el número es primo o no  
PROCESO:

ALGORITMO

```Javascript
variables ENTERAS: numero, divisor, cantidad
LEER: n

cantidad <- 0

PARA divisor DESDE 1 HASTA numero PASO 1 HACER
    SI MODULO(numero/divisor) = 0
        cantidad <- cantidad + 1
    FIN_SI
FIN_PARA

SI cantidad = 2 ENTONCES
    ESCRIBIR: numero, "Es número primo."
SINO 
    ESCRIBIR: numero, "No es número primo."
FIN_PARA

```

### Ejercicio 4.1.2

Escriba un algoritmo para calcular los n primeros números
primos

ANÁLISIS  
ENTRADA: Cantidad n  
SALIDA: Números primos  
PROCESO:  

ALGORITMO

```Javascript
variables ENTERAS: n, cantidad, divisor, contador, numero

LEER: n

cantidad <- 0

MIENTRAS cantidad <= n HACER

    divisores <- 0
    PARA divisor DESDE 1 HASTA numero PASO 1 HACER
        SI MODULO(numero/divisor) = 0
            divisores <- divisores + 1
        FIN_SI
    FIN_PARA

    SI cantidad = 2 ENTONCES
        ESCRIBIR: numero
        cantidad <- cantidad + 1
    FIN_SI
FIN_PARA
```

## 4.2 Ejercicios Matlab

### Ejercicio 4.2.1

Escribir un programa para obtener las tablas de
resta del que tiene como diferencia
de 1 al 12 menores que N.

PROGRAMA

```MATLAB
N = input("Ingrese el número de tablas: ");

for tabla=1:N
    fprintf("\nTabla %0i\n____________\n", tabla);

    for sustraendo=1:12
        fprintf("\r%2i - %2i = %2i\n", sustraendo + tabla, tabla, sustraendo);
    end
end
```

### Ejercicio 4.2.2

Imprimir un triángulo para un número N dado.

Para N = 4 se tendrá

\*  
\* *  
\* * *  
\* * * *  
\* * *  
\* *  
\* 

PROGRAMA

```matlab
N = 20;
for i=1:N
    for j=1:i-1
        fprintf("*")
        if i + j > N
            break;
        end
    end
    fprintf("\n")
end
```

### Ejercicio 4.2.3

Hacer un programa para calcular las cifras de pi con en la siguiente
serie

$$
\pi = 3 + \frac{3}{2 \cdot 3 \cdot 4} + \frac{4}{4 \cdot 5 \cdot 6}
+ \frac{4}{6 \cdot 7 \cdot 8} + \cdots
$$

PROGRAMA
```Matlab

```