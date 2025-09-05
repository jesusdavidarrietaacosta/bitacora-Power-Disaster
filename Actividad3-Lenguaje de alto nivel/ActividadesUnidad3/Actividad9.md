### Actividad 9
Considera el siguiente código. El archivo ofApp.h es el siguiente:
#pragma once

#include "ofMain.h"

class ofApp : public ofBaseApp{
public:
    void setup();
    void update();
    void draw();

    void keyPressed(int key);
    void mousePressed(int x, int y, int button);

private:
    vector<ofVec2f*> heapObjects;
};
​
Y el archivo ofApp.cpp es el siguiente:
#include "ofApp.h"

void ofApp::setup(){
    ofBackground(0);
}

void ofApp::update(){
}

void ofApp::draw(){
    ofSetColor(0, 0, 255); // Color azul para los objetos del heap
    for(auto& pos : heapObjects) {
        ofDrawCircle(pos->x, pos->y, 20);
        ofDrawBitmapString("Heap Memory", pos->x - 40, pos->y - 40);
    }
}

void ofApp::keyPressed(int key){
    if(key == 'f') {
        if(!heapObjects.empty()) {
            delete heapObjects.back();
            heapObjects.pop_back();
        }
    }
}

void ofApp::mousePressed(int x, int y, int button){
    heapObjects.push_back(new ofVec2f(x, y));
}
​
### ¿Qué sucede cuando presionas la tecla “f”?
R/: Al presionar 'f', el código libera (delete) el último objeto creado en el heap y elimina su puntero del vector (pop_back()), por lo que el objeto deja de dibujarse y su memoria queda disponible

Analiza detalladamente esta parte del código:
if(!heapObjects.empty()) {
    delete heapObjects.back();
    heapObjects.pop_back();
}



