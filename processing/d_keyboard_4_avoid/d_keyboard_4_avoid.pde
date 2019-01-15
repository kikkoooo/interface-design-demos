boolean keyW = false;
boolean keyL = false;
boolean keyP = false;


void setup() {
  size(800,400);
  background(0,0,0);
}

void draw() {
  if (keyW == true) {
     println("keyW == true");
  } else if (keyL == true) { 
    println("keyL == true");
  } else if (keyL == true && keyP == true) {
    println("keyL == true && keyP == true");
  } 
}

void keyPressed() {
  setMove(keyCode, true);
}
 
void keyReleased() {
  setMove(keyCode, false);
}
 
boolean setMove(int k, boolean b) {
  switch (k) {
  case UP:
    return isUp = b;
  case DOWN:
    return isDown = b;
  case LEFT:
    return isLeft = b;
  default:
    return b;
  }
}