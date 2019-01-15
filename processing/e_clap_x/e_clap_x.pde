import ddf.minim.*;

Minim minim;
AudioInput in;

PFont font;

float levels;


void setup()
{
  size(512, 200);
  minim = new Minim(this);
  minim.debugOn();
  
  frameRate(30);

  font = createFont("Helvetica", 32);
  textFont(font, 32);
  textAlign(LEFT, TOP);

  // get a line in from Minim, default bit depth is 16
  in = minim.getLineIn(Minim.STEREO, 512);
}

void draw() {
  
  if (levels > 10) {
   background(0,0,255);
  } else {
   background(0,0,0);
  }
  //println(levels);
  //if (levels > .5) {
  //  background(0,0,255);
  //} else if (levels > 1) {
  //  background(255,255,0);
  //} else if (levels > 2) {
  //  background(255,0,255);
  //} else {
  //  background(255,0,0);
  //}
  
  fill(0,0,255);
  
  //int time = millis();
  //if (millis() > time + 1000) {
  //}
  
  text("= " + levels, 10, 10);  

  for(int i = 0; i < in.bufferSize() - 1; i++) {
    levels = in.mix.get(i)*200;
  }
  
}


void stop() {
  // always close Minim audio classes when you are done with them
  in.close();
  minim.stop();
  super.stop();
}