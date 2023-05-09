# Algoritmos

Def. Secuencia de pasos no ambiguos que se deben seguir a partir de unos datos para llegar a la solución de un problema en un tiempo finito.

## Tipos de problemas

* Problemas númericos.
* problemas no númericos.

## Formas de reprecentar algoritmos

(a) Forma narrada en textual: se redactan los pasos.  
(b) forma gráfica:

* Diagramas de flujo.
* Diagramas NS.

(c) En seudo códio: Emplea un lenguage algoritmico.

## Elementos del seudo código

### Tipos de datos

1. ```Númericos``` Para datos de tipos númericos.
2. ```No númericos``` Para datos que no sean númericos.
3. ```Lógicos``` Solo acepta uno de dos valores.

### Operadores

### Funciones internas

1. ```ENTERO(x)```: Devuelve la parte entera de x.
2. ```MODULO(A, B)```: Devuelve $A|B$.
3. ```RAIZ(x)```: Devuelve $\sqrt{x}$.
4. ```LOG(x)```: Devuelve $\log(x)$.
5. ```LN(x)```: Devuelve $\ln(x)$.
6. ```SIN(x)```: devuelve $\sin(x)$.
7. ```COS(x)```: Devuelve $\cos(x)$.

## Costruyendo un algoritmo

### 1. Declaración de variables

Se utiliza para indicar el nombre de las variables y su tipo, las
mismas que se utilizan en el algoritmo y sigue la siguiente
sintaxis:

```python
    variables TIPO: [lista de variables]
```

donde ```TIPO``` pueden ser: ```ENTERAS```, ```REALES```, ```DE TEXTO```,
```LOGICAS```.

Y las ```listas de variables``` pueden ser una o mas separadas por comas
```,```.

### 2. Asignando valores a las variables

#### Operador de asignación ($\leftarrow$)

Se utiliza para dar valores a las variables. y se utiliza como muestra
la siguiente instrucción

```python
variable1 <- [varaible2, constante, expresion aritmetica]
```

NOTA: cualquier valor que tenga una variable al usar el operador
$\leftarrow$ sobrescribe el valor de dicha variable con el nuevo
valor.

### 3. Instrucción de entrada ```LEER```

Se utiliza para ingresar o pedir valores para las variables en el
momento que se ejectua el algoritmo y sigue la siguiente sintaxis:

```python
LEER: [lista de variables]
```

donde ```[lista de variables]``` es una o mas variables separadas
por comas, ejem:

```python
LEER: var1, var2, ...
```

### 5. Instrucción ```ESCRIBIR```

Se tuliza para mostrar, escribir e imprimir los resultados, que son la solución del problema formulado, y sigue la siguiente sintaxis:

```python
ESCRIBIR [lista de variables, constantes, expresiones aritméticas o lógicas]
```

donde ```[lista de variables,  constantes, expresiones ariméticas o lógicas]``` es una o mas
variables, constantes, expresiones separadas con comas ```,```.

```python
ESCRIBIR: var1, var2, ...
```

O escribir texto

```python
ESCRIBIR: "Hola mundo"
```

O convinado

```python
ESCRIBIR: "Hola", nombre, "Yo tengo", edad, "años."
```

## Resolución de problemas

Se tiene las siguientes faces

### 1. Análisis del problema

(a) Salida o resultado.  
(b) Entrada o datos.  
(c) Proceso.

### 2. Diseño del algoritmo

3. Codificación y depuración
4. Compliación y ejecución.
5. Documentación y mantenimiento.

## Problemas

### Ejercicio 1

Escribir un algoritmo en seudo codigo para hallar el volumen de un cono.

SOLUCIÓN

SALIDA: Volumen de un cono.  
ENTRADA: ```radio``` del cono y la ```altura``` del cono.  
PROCESO: $\pi*r^2*h/3$

Algoritmo: se utilizará ```^``` en ves de ```$\uparrow$

```python
variables REALES: radio, altura, volumen
LEER: radio, altura
volumen <- 3.14159 * r^2 * h / 3
ESCRIBIR: "El volumen del cono es: ", volumen
````
