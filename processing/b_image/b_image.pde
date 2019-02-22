// Processing Image object
// We have two PImage objects 
PImage img1; // Just declaring we have an Image Object called img1
PImage img2;


void setup() {
  size(800, 600);
  img1 = loadImage("gradient.jpg"); // Linking the jpg file to the variable object name  
  img2 = loadImage("moonwalk.jpg");
  
  image(img1, 50, 0);
}

//void draw() {
//  //random(min,max);
//  image(img1, mouseX, mouseY, random(0,50), random(0,50));
//  image(img2, mouseX, mouseY, random(0,50), random(0,50));
//  //image(img2, random(0,800), random(0,600), random(0,800), random(0,600));
//}