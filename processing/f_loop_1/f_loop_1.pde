void setup() {
  size(600, 600);
  noLoop();
}

void draw() {
  background(255);
  for (int i = 0; i < 100; i++) {
    //print("kikko ");
    fill(random(0,255),random(0,255),random(0,255));
    strokeWeight(random(0,20));
    stroke(random(0,255),random(0,255),random(0,255));
    ellipse(random(0,width),random(0,height),random(0,width),random(0,height));
  }
}