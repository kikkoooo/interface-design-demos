import P5ireBase.library.*;

// P5ireBase object
P5ireBase fire;

// String variable to store firebase data when it changes
String firebaseData; 

void setup() {
  size(800, 600);

  // Connect to your Firebase database
  fire = new P5ireBase(this, "https://interaction-3-f18-demo-lights.firebaseio.com");
  
  // Initializes data retrival when the data has change. 
  // Replace "kikko" with the proper item from your FB  
  firebaseData = fire.getValue("kikko");
}

void draw() {

  // Grab the updated data and replace the string variable
  firebaseData = "_" + fire.updateData();

  // If the data value equals "yo" then do something
  if (firebaseData.equals("_yo")) {
    background(0,0,255);
    println("yo");
  } else {
    background(255);
  }

}
