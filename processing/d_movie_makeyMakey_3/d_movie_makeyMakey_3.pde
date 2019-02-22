boolean playBtn1;
boolean playBtn2;
boolean playBtn3;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  
  // If BTN Q + W keys are pressed at the same time
  if (playBtn1 == true && playBtn2 == true) {
     println("Hey it works. Btn 1 and 2"); 
  
  // If BTN Q + E keys are pressed at the same time
  } else if (playBtn1 == true && playBtn3 == true) {
     println("Yep this works too. Btn 1 and 3");

  // If only BTN Q key is pressed at the same time
  } else if (playBtn1 == true) {
     println("Only 1 the Q button is pressed");
     
  // NO BTNS pressed
  } else {
     println("Nothing"); 
  }

}

void keyPressed() {
  if (key == 'q' ) {  
    playBtn1 = true;
  } else if (key == 'w' ) {
    playBtn2 = true;
  } else if (key == 'e' ) {
    playBtn3 = true;
  }

}

void keyReleased() {
  if (key == 'q' ) {  
    playBtn1 = false;
  } else if (key == 'w' ) {
    playBtn2 = false;
  } else if (key == 'e' ) {
    playBtn3 = false;
  }
}