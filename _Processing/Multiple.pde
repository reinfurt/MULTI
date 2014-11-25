// O-R-G 
//
// based on Gestalt
// based on CJoA.pde
// based on Boetti clock


PFont displayFont;

boolean drawText = false;
boolean paused = false;
boolean trails = false;

color backgroundColor = color(255);
color fillColor = color(0);
color strokeColor = color(255);

int thisSize = 200;
int thisFrameRate = 10;
int offset = 25;
int rotateDirection = 1;  // 1 clockwise [-1] counter
int counter = 0;  // for iterating animation

float thisScale = thisSize * .0125; // automatically adjusted based on thisSize
float rotateSpeed = 1000000000.0;  // [40.0] the lower value, the faster

String[] eye = {
  ",", ".", "*", "+", "-", "—", ":", ";", "•", "°"
};
String[] mouth = {
  "o", "+", "-", "+", "–", "/", "x", "=", "~", "_", "-", "_", "*"
};



void setup() {
  // frame.setBackground(new java.awt.Color(0, 0, 0));  // Present-mode
  size(thisSize, thisSize);
  frameRate(thisFrameRate);
  background(backgroundColor);
  stroke(strokeColor);
  smooth();
  displayFont = loadFont("AndaleMono-48.vlw");
  textFont(displayFont, 1.2);
  textAlign(CENTER);
  textSize(48);
  fill(fillColor);
}

// set up array with punctuations
// choose randomly from the matrix



void draw() {

  if (!paused) {
    background(backgroundColor);
    text(eye[(int)random(eye.length)], width/2-offset, height/2-.5*offset);
    text(eye[(int)random(eye.length)], width/2+offset, height/2-.5*offset);
    text(mouth[(int)random(mouth.length)], width/2, height/2+offset*1.5);
  }
}



void mousePressed() {
  paused = !paused;
}



void keyPressed() {
  switch (key) {
  case '=':   // speed up
    thisFrameRate -= 1;
    //rotateSpeed -= .5;
    frameRate(thisFrameRate);
    break;
  case '-':   // slow down
    thisFrameRate += 1;
    //rotateSpeed += .5;
    frameRate(thisFrameRate);
    break;
  case ' ':  // pause
    paused = !paused;
    break;
  default:
    break;
  }
}

