### el pc hack es de 16 bits
#### la pantalla hack tiene una pantalla de 51 px por 256 px 
#### la pantalla esta hecha con registros cada registro equivale a 
#### sumale 31 para escribir una linea 
#### 8192 registros x 16 = 181072 Bits = 16384 B = 16 kb


#### max registro 24576 (ram)

´´´
@kbd
D=M
@100
D=D-A
@Draw
D;JEQ
@LOOP
D;jmp
(draw)
// aqui deberia de ir el codigo del dibujo
´´´
### Actividad 1
- ¿Qué es la entrada-salida mapeada a memoria?
R/: Hace referencia a que hay dispositivo de entrada y de salida asignadas en una direccion de la memoria RAM

- ¿Cómo se implementa en la plataforma Hack?
R/: @KBD (RAM[24576]) para dispositvo de entrada y @SCREEN (RAM[16384] a RAM[24575]) para dispisitivo de salida

- Inventa un programa que haga uso de la entrada-salida mapeada a memoria.
R/:
´´´´

´´´

- Investiga el funcionamiento del programa con el simulador.
R/:  


### Actividad 3

al precionar 100 dibujar, mientras no se presione nada borrar pantalla

@kbd
D=M
@100
D=D-A
@Draw
D;JEQ
@LOOP
D;jmp
(draw)
// aqui deberia de ir el codigo del dibujo
  
