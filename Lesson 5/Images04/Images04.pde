/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches

also from Daniel Shifmann Learning Processing and
his multiple cool stuff online
*/

PImage img;
int pointillize = 16;

void setup() 
{
  size(300,209);
  img = loadImage("cavaco.jpg");
  background(255);
  smooth();
}

void draw() 
{  
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  //get the pixel number
  int loc = x + y*img.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  // Back to shapes! Instead of setting a pixel, we use the color 
  // from a pixel to draw a circle.
  fill(r,g,b,100);
  ellipse(x,y,pointillize,pointillize); 
}