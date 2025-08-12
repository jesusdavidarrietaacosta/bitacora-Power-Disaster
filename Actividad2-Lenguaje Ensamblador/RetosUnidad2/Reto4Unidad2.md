### 4. Ahora vamos a acercarnos al concepto de puntero. Un puntero es una variable que almacena la dirección de memoria de otra variable. Observa el siguiente programa escrito en C++:
    
    ```cpp
    int var = 10;
    int *punt;
    punt = &var;
    *punt = 20;
    ```
    
    El programa anterior modifica el contenido de la variable `var` por medio de la variable `punt`. `punt` es un puntero porque almacena la dirección de memoria de la variable `var` . En este caso el valor de la variable `var`  será 20 luego de ejecutar `*punt = 20;`. Ahora analiza:
    
    - ¿Cómo se declara un puntero en C++? 
    R/: `int *punt;`. `punt` es una variable que almacenará la dirección de un variable que almacena enteros.
    
    - ¿Cómo se define un puntero en C++? 
    R/;`punt = &var;`. Definir el puntero es inicializar el valor del puntero, es decir, guardar la dirección de una variable. En este caso `punt` contendrá la dirección de `var` .

    - ¿Cómo se almacena en C++ la dirección de memoria de una variable?
    R/:Con el operador `&`. `punt = &var;`

    - ¿Cómo se escribe el contenido de la variable a la que apunta un puntero? 
    R/: Con el operador . `punt = 20;`. En este caso como `punt` contiene la dirección de `var`  entonces `punt` a la izquierda del igual indica que quieres actualizar el valor de la variable `var` .