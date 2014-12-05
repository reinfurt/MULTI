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
color strokeColor = color(100);

int offset = 31; // [25]
int counter = 0;  // for iterating animation
int thisFrameRate = 10;
int thisFrameRateAdjust = 0;

String[] eye = {",", ".", "*", "+", "-", "—", ":", ";", "•", "°", "‘", "’"};
String[] mouth = {"o", "+", "-", "+", "–", "/", "x", "=", "~", "_", "-", "_", "*"};



void setup() {

  size(200, 355);
  frameRate(100);
  background(backgroundColor);
  stroke(strokeColor);
  smooth();
  // minim = new Minim(this);
  // click = minim.loadFile( "_Processing/data/BD.mp3", 256);  // default buffer is 1024, workable is 512 
  // click = minim.loadSample( "Clave-808.aif", 256);  // default buffer is 1024, workable is 512
  // click = minim.loadFile( "_Processing/data/Clave-808.aif", 256);  // default buffer is 1024, workable is 512
  // click = minim.loadFile( "_Processing/data/SD.wav", 256);  // default buffer is 1024, workable is 512
  displayFont = loadFont("_Processing/data/AndaleMono-60.vlw");
  textFont(displayFont);
  textAlign(CENTER);
  textSize(60);
  fill(fillColor);
}



void draw() {

  if (!paused && (counter % thisFrameRate == 0) ) { 

    background(backgroundColor);
    // click.trigger();
    // click.pause();
    // click.play();
    // click.rewind();
    text(eye[(int)random(eye.length)], width/2-offset, height/2-.5*offset-height/20);
    text(eye[(int)random(eye.length)], width/2+offset, height/2-.5*offset-height/20);
    text(mouth[(int)random(mouth.length)], width/2, height/2+offset*1.5-height/20);
  }

  if ((thisFrameRateAdjust != 0) && (thisFrameRateAdjustDisplay < 20)) {

    line(width-20,thisFrameRateAdjust,width,thisFrameRateAdjust); 
    thisFrameRateAdjustDisplay++;
  }

  counter++;
}



void touchStart(TouchEvent touchEvent) {
  
	useMultiTouch = true;

	for (int i = 0; i < touchEvent.touches.length; i++) {

		int x = touchEvent.touches[i].offsetX;
		int y = touchEvent.touches[i].offsetY;

		if (x < (width - 10)) {

			paused = !paused;
			thisFrameRateAdjust = 0;
		}
	}

}


void touchMove(TouchEvent touchEvent) {

	useMultiTouch = true;

	if (!paused) {

		for (int i = 0; i < touchEvent.touches.length; i++) {

			int x = touchEvent.touches[i].offsetX;
			int y = touchEvent.touches[i].offsetY;

			if (x >= (width - 10)) {
 
				thisFrameRate = (int)map(y, 0, height, 1, 30);
				thisFrameRateAdjust = y;
				thisFrameRateAdjustDisplay = 0;
			}
		} 
	
	} 
}


/*
void mousePressed() {
   paused = !paused;
}

void mouseDragged() {
  // thisFrameRate = (int)map(mouseY, 0, height, 1, 10);
  // frameRate(thisFrameRate);
}

void keyPressed() {
  switch (key) {
  case '=':   // speed up
    thisFrameRate += 1;
    // frameRate(thisFrameRate);
    break;
  case '-':   // slow down
    if (thisFrameRate > 1) { 
      thisFrameRate -= 1;
    }
    // frameRate(thisFrameRate);
    break;
  case ' ':  // pause
    paused = !paused;
    break;
  default:
    break;
  }
}
*/
