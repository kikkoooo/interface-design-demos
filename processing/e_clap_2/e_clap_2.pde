import ddf.minim.*;

Minim minim;
AudioInput in;

PFont font;
float levels;

void setup() {
  size(800, 600);
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

  for(int i = 0; i < in.bufferSize() - 1; i++) {
    levels = in.mix.get(i)*200;
  }
  
  if (levels > 10) {
    fill(random(0,255),random(0,255),random(0,255));
    text("KIKKO", random(0,width), random(0,height));      
  }

}

void stop() {
  in.close();
  minim.stop();
  super.stop();
}