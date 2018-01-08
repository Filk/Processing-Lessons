// Adapted from Example 16-10: The scribbler mirror

import processing.video.*;
Capture cam;

// Two global variables
float x;
float y;


void setup() 
{
  size(320, 240);
  background(255);
  
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) 
  {
    println("There are no cameras available for capture.");
    exit();
  } 
  else 
  {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) 
    {
      println(cameras[i]);
    }
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, width, height);
    cam.start();     
  }
  
  // Start x and y in the center
  x = width/2;
  y = height/2;
}

void draw() 
{  
   cam.loadPixels();

  // Pick a new x and y
  float newx = constrain(x + random(-20, 20), 0, width-1);
  float newy = constrain(y + random(-20, 20), 0, height-1);

  // Find the midpoint of the line
  int midx = int((newx + x) / 2);
  int midy = int((newy + y) / 2);

  // Pick the color from the video, reversing x
  color c = cam.get(midx,midy);

  // Draw a line from x,y to the newx,newy
  stroke(c);
  strokeWeight(5);
  line(x, y, newx, newy);

  // Save newx, newy in x,y
  x = newx;
  y = newy;
}

void captureEvent(Capture cam) 
{
  // Read image from the camera
  cam.read();
}