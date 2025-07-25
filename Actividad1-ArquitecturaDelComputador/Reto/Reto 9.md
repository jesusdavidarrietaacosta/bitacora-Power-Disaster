### Considera el siguiente programa:

´´´i = 1
sum = 0
sum = sum + i
i = i + 1
´´´

### La traducción a lenguaje ensamblador del programa anterior es:
´´´
// i = 1
@i
M=1
// sum = 0
@sum
M=0
// sum = sum + i
@i
D=M
@sum
M=D+M
// i = i + 1
@i
D=M+1
@i
M=D
´´´
### ¿Qué hace este programa?
#### Este programa añade 1 a la poscion 16 luego coloca 0 en 17 procede a sumar 16 y 17 dejando el resultado en 17 luego le agrega 1 a 16 dejando un 2 en esa posicion. al final i(16) quedara con 2 y sum(17) quedara con 1

### ¿En qué parte de la memoria RAM está la variable `i` y `sum`? ¿Por qué en esas posiciones?
#### Esto se debe a que el simulador le da automáticamente variables simbólicas a partir de la dirección RAM[16] porque los espacios en la RAM de 0 a 15 estan ocupados para uso especifico o uso temporal de registros generales

### Optimiza esta parte del código para que use solo dos instrucciones:

´´´
// i = i + 1
@i
D=M+1
@i
M=D
´´´
#### Solucion:

´´´
@i
M=M+1
´´´