// var = 10
@10
D=A
@R0      // var
M=D

// bis = 5
@5
D=A
@R1      // bis
M=D

// p_var = &var
@R0
D=A
@R2      // p_var
M=D

// bis = *p_var
@R2
A=M      // A = contenido de p_var (dirección de var)
D=M      // D = valor de var
@R1
M=D      // bis = valor de var
