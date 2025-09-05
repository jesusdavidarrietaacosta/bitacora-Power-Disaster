## Actividad 5
### ¿Cuál es la definición de un puntero?
R/: Un puntero es una variable que guarda la direccion de memmoria de otra variable 

### ¿Dónde está el puntero?
R/: aqui 

´´´
vector<Sphere *> spheres;
Sphere * selectedSphere;

´´´

### ¿Cómo se inicializa el puntero?
R/: 
´´´
spheres.push_back(new Sphere(x, y, radius));

´´´

crea un objeto Sphere en el heap luego Devuelve la dirección de memoria donde está esa esfera en Esa dirección es almacenada en un puntero dentro de spheres


### ¿Para qué se está usando el puntero?
R/: Los punteros ´´´ Sphere* ´´´ permiten manejar esferas dinámicas, en el caso de ´´´spheres.push_back(new Sphere(x, y, radius)); ´´´ Crea dinámicamente una nueva esfera en memoria guardando lad direccion en ´´´vector<Sphere*> spheres ´´´


### ¿Qué es exactamente lo que está almacenado en el puntero?
R/: Esta almacenando la direccion de la memoria de las esferas generadas
