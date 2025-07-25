## 11.Considera el siguiente programa:
´´´i = 1000
LOOP:
if (i == 0) goto CONT
i = i - 1
goto LOOP
CONT:
´´´
## La traducción a lenguaje ensamblador del programa anterior es:
´´´
// i = 1000
@1000
D=A
@i
M=D
(LOOP)
// if (i == 0) goto CONT
@i
D=M
@CONT
D;JEQ
// i = i - 1
@i
M=M-1
// goto LOOP
@LOOP
0;JMP
(CONT)
´´´
### ¿Qué hace este programa?
#### Cuenta regresiva de 1000 a 1

### En qué memoria está almacenada la variable i? ¿En qué dirección de esa memoria?
#### Esta almacenado en la memoria 16. y esta en la direccion 16 

### ¿En qué memoria y en qué dirección de memoria está almacenado el comentario //`i = 1000?`
#### No esta guardado en ninguna parte de la memoria el simulador lo ignora

### ¿Cuál es la primera instrucción del programa anterior? ¿En qué memoria y en qué dirección de memoria está almacenada esa instrucción?
#### la primera instruccion es "@1000" y esta guardada en "A"

### ¿Qué son CONT y LOOP?
#### Indican pisiocnes en al ROM para permitir saltos (JMP, JEQ, etc)

### ¿Cuál es la diferencia entre los símbolos `i` y `CONT`?
#### i es un símbolo de datos, se almacena en RAM y puede cambiar su valor. CONT es un símbolo de control, no ocupa RAM, solo se usa para hacer saltos (goto).