// Main visual function. Loops infinitely.
void draw() {

  background(255);
  
  // random(minimum, maximum)
  stroke(random(0, 255), random(0, 255), random(0, 255));
  strokeWeight(random(0, 100));

  // Starting point X, sp Y, end point X, ep Y 
  ellipse(random(0, width), random(0, height), random(0, width), random(0, height));
}