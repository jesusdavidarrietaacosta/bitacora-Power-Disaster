// Inicializar sum = 0
@sum
M=0 

// Inicializar j = 0
@j
M=0 

(LOOP)
    // Si j == 10, salir del bucle
    @j
    D=M
    @10
    D=D-A
    @END
    D;JGE  

    // Calcular la dirección de arr[j]
    @arr      // Dirección base del arreglo
    D=M       // D = Dirección base de arr
    @j
    A=D+M     // A apunta a arr[j]
    D=M       // D = valor en arr[j]

    // Sumar arr[j] a sum
    @sum
    A=M       // Acceder a sum
    D=D+M     // D = sum + arr[j]
    @sum
    M=D       // Guardar el nuevo valor en sum

    // j++
    @j
    M=M+1 

    // Repetir bucle
    @LOOP
    0;JMP  


(END)
    @END
    0;JMP  // Bucle infinito para detener el programa
