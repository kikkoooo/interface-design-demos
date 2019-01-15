//Import libraries 
import gab.opencv.*;
import processing.video.*;
import java.awt.*;

//Declare variables
Capture video;
OpenCV opencv;

//Box 
int scaled = 2;
int faceXPos;
int faceYPos;

void setup() {
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  video.start();
}

void draw() {
  scale(1);
  opencv.loadImage(video);
  
  //Draws endlessly
  //background(255);
  image(video, 0, 0, width, height);

  //Our input/listening box
  noStroke();
  fill(255,0,0,100);
  rect(0,0,width/4,height);  
  fill(0,255,0,100);
  rect(width/4*3,0,width/4,height);


  //Facetracking visual setup
  noFill();
  stroke(0, 0, 255);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  //println(faces.length);

  //If there are #of faces
  //faces.length is the number of faces being detected
  if (faces.length == 1 ) {
    //println("hey kikko, watup");
  } else if (faces.length == 2 ){
    //println("hey.. kikko and other guy?");
  } else if (faces.length == 3 ){
    //println("way to many faces now");
  }  
    
  //Facetracking shapes and calculations 
  for (int i = 0; i < faces.length; i++) {
    //rect(faces[i].x*scaled, faces[i].y*scaled, faces[i].width*scaled, faces[i].height*scaled);
    faceXPos = (faces[i].x*scaled) + (faces[i].width*scaled/2); 
    faceYPos = (faces[i].y*scaled) + (faces[i].height*scaled/2);
    ellipse(faceXPos,faceYPos,1,1);
    //println(faceXPos + "," + faceYPos);
  }
  
  //If face is inside the box 
  if (faceXPos < width/4 ) {
    //Do stuff here...
    println("LEFT");
    rect(random(0,width),random(0,width),random(0,width),random(0,width));
  } else if (faceXPos > width/4*3 ) {
    println("RIGHT"); 
    line(random(0,width),random(0,width),random(0,width),random(0,width));
  } else {
    println("SAFE"); 
  }
}

void captureEvent(Capture c) {
  c.read();
}