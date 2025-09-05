Las modificaciones que realice fueron el cambio de color 
´´´ 
particleColor = ofColor(ofRandom(123), ofRandom(53), ofRandom(222));

´´´

Y el tamaño de particulas

´´´
void ofApp::mouseMoved(int x, int y) {
	particles.push_back(ofVec2f(x, y));
	if (particles.size() > 15) {
		particles.erase(particles.begin());
	}
}

´´´