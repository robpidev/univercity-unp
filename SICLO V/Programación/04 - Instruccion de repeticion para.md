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
