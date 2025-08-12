@i
M=1
@sum
M=0

(LOOP)
// if (i > 100) goto CONT
@i
D=M
@101        // 101 porque la condición es i <= 100, así que salimos si i == 101
D=D-A
@CONT
D;JGE       // Salta si i >= 101

// sum = sum + i
@i
D=M
@sum
M=D+M

// i = i + 1
@i
M=M+1

// goto LOOP
@LOOP
0;JMP

(CONT)
// Fin del programa: loop infinito
@CONT
0;JMP
