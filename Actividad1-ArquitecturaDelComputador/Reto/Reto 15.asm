// i = 0
@i
M=0

(LOOP)
// if i == R1 goto END
@i
D=M
@1        // R1
D=D-M     // D = i - R1
@END
D;JEQ     // if i == R1, jump to END

// ptr = R0 + i
@0        // R0
D=M       // D = R0
@i
A=D+M     // A = R0 + i
M=-1      // RAM[R0 + i] = -1

// i = i + 1
@i
M=M+1

// goto LOOP
@LOOP
0;JMP

(END)
@END
0;JMP     // bucle infinito al final (opcional)
