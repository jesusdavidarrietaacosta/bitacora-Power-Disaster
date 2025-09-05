## Actividad 7

### Ahora te voy a proponer que reflexiones profundamente sobre el manejo de la memoria en un programa. Se trata de un experimento en el que tienes que analizar por qué está funcionando mal. - 

### ¿Qué sucede cuando presionas la tecla “c”? 
R/Nada, se supone que se deberia de crear un objeto pero no se crea

### Realiza esta modificación a la función `createObjectInStack` donde claramente se está creando un objeto, pero se está creando en el `heap` y no en el `stack`, así que no te dejes confundir por el nombre de la función.


### - ¿Qué sucede cuando presionas la tecla “c”?
R/:Se crea un ciculo aleatoria en la pantalla


### ¿Por qué ocurre esto?
R/: Por que antes estaba se estaba creando en el stack(la función createObjectInStack()) y ahora se esta creando en el heap gracias al uso de ´new´

