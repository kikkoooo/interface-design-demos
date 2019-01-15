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
  

  // Grabs the mic sound value 
  for(int i = 0; i < in.bufferSize() - 1; i++) {
    levels = in.mix.get(i)*200;
  }
  
  if (levels > 20) {
    background(0,0,255);
    fill(random(0,255),random(0,255),random(0,255));
    text("KIKKO", random(0,width), random(0,height));      
  } else {
    background(0,0,0);
    fill(random(0,255),random(0,255),random(0,255));
    text("KIKKO", random(0,width), random(0,height));      
  }
    
    println("= " + levels, 10, 10);

}


void stop() {
  // always close Minim audio classes when you are done with them
  in.close();
  minim.stop();
  super.stop();
}