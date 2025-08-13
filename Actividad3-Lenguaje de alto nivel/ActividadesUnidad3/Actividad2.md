### Actividad 2

De nuevo una actividad grupal en la cual escribiremos juntos nuestra primera aplicación y analizaremos las diferentes partes que la componen.

- Genera un proyecto con el generador de proyectos de **`openframeworks`**.
- Abre el proyecto en Visual Studio.
- Modifica el archivo `ofApp.h` así:

```cpp
#pragma once

#include "ofMain.h"

class ofApp : public ofBaseApp{

    public:
        void setup();
        void update();
        void draw();

        void mouseMoved(int x, int y );
        void mousePressed(int x, int y, int button);

    private:

        vector<ofVec2f> particles;
        ofColor particleColor;

};
```

- Ahora modifica el archivo `ofApp.cpp` así:

```cpp
#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofBackground(0);
    particleColor = ofColor::white;
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    for(auto &pos: particles){
        ofSetColor(particleColor);
        ofDrawCircle(pos.x, pos.y, 50);
    }
}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){
    particles.push_back(ofVec2f(x, y));
    if (particles.size() > 100) {
        particles.erase(particles.begin());
    }
}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){
    particleColor = ofColor(ofRandom(255), ofRandom(255), ofRandom(255));
}
```

Analicemos juntos este código:

- ¿Qué fue lo que incluimos en el archivo .h?
R/: Se incluyo el siguiente codigo

```
private:
	vector<ofVec2f> particles;
	ofColor particleColor;
```

- ¿Cómo funciona la aplicación?
R/: Es una aplicacion que crea 100 circulos por el paso del mouse y al darle clic cambia de color

- ¿Qué hace la función mouseMoved?
R/: Sirve para darle seguiento al mouse y cuando se llegue a la cantidad de 100 circulos borre los mas viejos 


- ¿Qué hace la función mousePressed?
R/: Cuando se hace clic cambia a un color aleatorio

- ¿Qué hace la función setup?
R/: Da el color negro del fondo y del ciculo blanco

- ¿Qué hace la función update?
R/: En este programa nada

- ¿Qué hace la función draw?
R/: Un ciclo for. Dibuja los circulos constante mente dandole un color y tamaño
