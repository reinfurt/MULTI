// O-R-G 
// for ART PAPERS
// 01 / 05 / 2015

PFont displayFont;

boolean paused = false;
boolean useMultiTouch = false;

color backgroundColor = color(255);
color fillColor = color(0);
color strokeColor = color(0);

int counter = 0;  // for iterating animation
int thisFrameRate = 10;
int thisFrameRateAdjust = 0;
int thisFrameRateAdjustDisplay = 0;
int thisFrameRateAdjustDisplayLimit = 20;
int frameRateAdjustLineWidth = 115;
int frameRateAdjustLineWeight = 4;
int offset = 119; // [25] [31]

String[] eye = {",", ".", "*", "+", "-", "—", ":", ";", "•", "°", "‘", "’"};
String[] mouth = {"o", "+", "-", "+", "–", "/", "x", "=", "~", "_", "-", "_", "*"};



void setup() {

	size(768, 1024);
	frameRate(100);
	background(backgroundColor);
	fill(fillColor);
	stroke(strokeColor);
	strokeWeight(frameRateAdjustLineWeight);
	smooth();

	displayFont = loadFont("_Processing/data/AndaleMono-230.vlw");
	textFont(displayFont);
	textAlign(CENTER);
	textSize(230);
}



void draw() {

	if (!paused && (counter % thisFrameRate == 0) ) { 

		background(backgroundColor);
		text(eye[(int)random(eye.length)], width/2-offset, height/2-.5*offset-height/20);
		text(eye[(int)random(eye.length)], width/2+offset, height/2-.5*offset-height/20);
		text(mouth[(int)random(mouth.length)], width/2, height/2+offset*1.5-height/20);
  	}

	if ((thisFrameRateAdjust != 0) && (thisFrameRateAdjustDisplay < thisFrameRateAdjustDisplayLimit)) {

		fill(255);
		stroke(255);
		rect(width-frameRateAdjustLineWidth,0,width-frameRateAdjustLineWidth,height);
		fill(0);
		stroke(strokeColor);
    		line(width-frameRateAdjustLineWidth,thisFrameRateAdjust,width,thisFrameRateAdjust); 
		thisFrameRateAdjustDisplay++;
	}

	counter++;
}



void touchStart(TouchEvent touchEvent) {
  
	useMultiTouch = true;

	for (int i = 0; i < touchEvent.touches.length; i++) {
		
		int x = touchEvent.touches[i].offsetX;
		int y = touchEvent.touches[i].offsetY;

		if (x < (width - frameRateAdjustLineWidth)) {
			
			paused = !paused;
			thisFrameRateAdjust = 0;
			thisFrameRateAdjustDisplay = 0;
		}	
	}
}



void touchMove(TouchEvent touchEvent) {

	useMultiTouch = true;

	if (!paused) {

                for (int i = 0; i < touchEvent.touches.length; i++) {
    
                        int x = touchEvent.touches[i].offsetX;
                        int y = touchEvent.touches[i].offsetY;
    
                        if (x >= (width - frameRateAdjustLineWidth)) {
   
                                thisFrameRate = (int)map(y, 0, height, 1, 20);
                                thisFrameRateAdjust = y;
				thisFrameRateAdjustDisplay = 0;
                        }
                }
	} 
}



void mousePressed() {

	if (!useMultiTouch) {

		int x = mouseX;
		int y = mouseY;

		if (x < (width - frameRateAdjustLineWidth)) {

			paused = !paused;
			thisFrameRateAdjust = 0;
			thisFrameRateAdjustDisplay = 0;
		}
	}
}



void mouseDragged() {

	if (!useMultiTouch && !paused) {

                int x = mouseX;
                int y = mouseY;

		if (x >= (width - frameRateAdjustLineWidth)) {

 			thisFrameRate = (int)map(y, 0, height, 1, 30);
			thisFrameRateAdjust = y;
			thisFrameRateAdjustDisplay = 0;
                }	
	}
}
