## Actividad 6

### El código anterior tiene un problema. ¿Puedes identificar cuál es? ¿Cómo lo solucionarías? Recuerda que deberías poder seleccionar una esfera y moverla con el mouse.
R/: El problema es que no hay un desleccionador en el codigo, osea agarra pero no suelta. lo que yo haria seria esto

En ofapp.h
```
#pragma once
#include "ofMain.h"

class Sphere {
public:
    Sphere(float x, float y, float radius);   // constructor
    void draw();
    void update(float x, float y);

    float getX();
    float getY();
    float getRadius();

private:
    float x, y;
    float radius;
    ofColor color;
};

class ofApp : public ofBaseApp{
public:
    void setup();
    void update();
    void draw();

    void mousePressed(int x, int y, int button);
    void mouseDragged(int x, int y, int button);
    void mouseReleased(int x, int y, int button);

    vector<Sphere*> spheres;
    Sphere* selectedSphere;
};

```

Y en ofapp.cpp

```
#include "ofApp.h"

// ------------------
// Implementación Sphere
// ------------------
Sphere::Sphere(float x, float y, float radius)
    : x(x), y(y), radius(radius) {
    color = ofColor(ofRandom(255), ofRandom(255), ofRandom(255));
}

void Sphere::draw() {
    ofSetColor(color);
    ofDrawCircle(x, y, radius);
}

void Sphere::update(float x, float y) {
    this->x = x;
    this->y = y;
}

float Sphere::getX() { return x; }
float Sphere::getY() { return y; }
float Sphere::getRadius() { return radius; }

// ------------------
// Implementación ofApp
// ------------------
void ofApp::setup() {
    ofBackground(0);

    for (int i = 0; i < 5; i++) {
        float x = ofRandomWidth();
        float y = ofRandomHeight();
        float radius = ofRandom(20, 50);
        spheres.push_back(new Sphere(x, y, radius));
    }
    selectedSphere = nullptr;
}

void ofApp::update() {
    // En este ejemplo las esferas no se mueven solas
}

void ofApp::draw() {
    for (auto s : spheres) {
        s->draw();
    }
}

void ofApp::mousePressed(int x, int y, int button) {
    for (auto s : spheres) {
        float dx = x - s->getX();
        float dy = y - s->getY();
        float dist = sqrt(dx*dx + dy*dy);
        if (dist < s->getRadius()) {
            selectedSphere = s;
            break;
        }
    }
}

void ofApp::mouseDragged(int x, int y, int button) {
    if (selectedSphere != nullptr) {
        selectedSphere->update(x, y);
    }
}

void ofApp::mouseReleased(int x, int y, int button) {
    selectedSphere = nullptr;
}

```
