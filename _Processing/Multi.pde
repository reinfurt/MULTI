// O-R-G 
// for ART PAPERS
// 12 / 2014

// import ddf.minim.*;

// Minim minim;
// AudioPlayer click;

PFont displayFont;

boolean paused = false;
boolean useMultiTouch = false;

color backgroundColor = color(255);
color fillColor = color(0);
color strokeColor = color(255);

int thisSize = 200; // [200]
int thisFrameRate = 20;
int offset = 25;
int counter = 0;  // for iterating animation

float thisScale = thisSize * .0125; // automatically adjusted based on thisSize
float rotateSpeed = 1000000000.0;  // [40.0] the lower value, the faster

String[] eye = {
  ",", ".", "*", "+", "-", "—", ":", ";", "•", "°", "‘", "’"
};
String[] mouth = {
  "o", "+", "-", "+", "–", "/", "x", "=", "~", "_", "-", "_", "*"
};



void setup() {
  size(200, 200);
  // frameRate(thisFrameRate);
  frameRate(20);
  background(backgroundColor);
  stroke(strokeColor);
  smooth();
  // minim = new Minim(this);
  // click = minim.loadFile( "_Processing/data/BD.mp3", 256);  // default buffer is 1024, workable is 512 
  // click = minim.loadSample( "Clave-808.aif", 256);  // default buffer is 1024, workable is 512
  // click = minim.loadFile( "_Processing/data/Clave-808.aif", 256);  // default buffer is 1024, workable is 512
  // click = minim.loadFile( "_Processing/data/SD.wav", 256);  // default buffer is 1024, workable is 512
  displayFont = loadFont("AndaleMono-48.vlw");
  textFont(displayFont, 1.2);
  textAlign(CENTER);
  textSize(48);
  fill(fillColor);
}



void draw() {

  if (!paused && (counter % thisFrameRate == 0) ) { 
  // if (!paused) { 
    background(backgroundColor);
    // click.trigger();
   //click.pause();
    text(eye[(int)random(eye.length)], width/2-offset, height/2-.5*offset);
    text(eye[(int)random(eye.length)], width/2+offset, height/2-.5*offset);
    text(mouth[(int)random(mouth.length)], width/2, height/2+offset*1.5);
    // click.play();
    // click.rewind();
  }
counter++;
}


/*
void mousePressed() {
   paused = !paused;
}

void mouseDragged() {
  // thisFrameRate = (int)map(mouseY, 0, height, 1, 10);
  // frameRate(thisFrameRate);
}
*/



void touchStart(TouchEvent touchEvent) {
  
	useMultiTouch = true;
	paused = !paused;
}


void touchMove(TouchEvent touchEvent) {

  useMultiTouch = true;

// only adjust if currently moving
// only adjust if on the right side ??

if (!paused) {

/*
  for (int i = 0; i < touchEvent.touches.length; i++) {
    int x = touchEvent.touches[i].offsetX;
    int y = touchEvent.touches[i].offsetY;
    
    //Disc newDisc = new Disc( x, y );
    //mouseTrail.add( newDisc );
  }
*/
    int y = touchEvent.offsetY;
 
fill(map(y,0,height,0,255));
thisFrameRate = (int)map(y, 0, height, 1, 10);
}
}


void keyPressed() {
  switch (key) {
  case '=':   // speed up
    thisFrameRate += 1;
    frameRate(thisFrameRate);
    break;
  case '-':   // slow down
    if (thisFrameRate > 1) { 
      thisFrameRate -= 1;
    }
    frameRate(thisFrameRate);
    break;
  case ' ':  // pause
    paused = !paused;
    break;
  default:
    break;
  }
}

