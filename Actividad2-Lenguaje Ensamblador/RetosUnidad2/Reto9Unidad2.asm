// ==== main ====
@6        // c = suma(6, 9)
D=A
@a        // guardar 6 en variable a
M=D

@9
D=A
@b        // guardar 9 en variable b
M=D

@Suma     // saltar a función suma
0;JMP

// ==== función suma ====
(Suma)
@a
D=M       // D = a
@b
D=D+M     // D = a + b
@c
M=D       // guardar resultado en c

// regreso simulado al "cout"
@c
D=M       // D = c
@SCREEN
M=D       // Mostrar valor de c en pantalla

(END)
@END
0;JMP     // bucle infinito al final del programa
