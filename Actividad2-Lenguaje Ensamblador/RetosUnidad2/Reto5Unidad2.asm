@i       // var = 10
@10
D=A
@R0      // var
M=D

// punt = &var
@R0
D=A
@R1      // punt
M=D

// *punt = 20
@20
D=A      // D = 20
@R1
A=M      // A = valor de punt (la dirección guardada)
M=D      // RAM[valor de punt] = 20, o sea, var = 20
