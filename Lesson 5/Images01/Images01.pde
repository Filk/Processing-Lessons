/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches

also from Daniel Shifmann Learning Processing and
his multiple cool stuff online
*/

// Declaring a variable of type PImage
// PImage is a class available from the Processing core library.
PImage img; 

void setup() 
{
  size(320, 240);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("filk.png");
}

void draw() 
{
  background(0);
  // The image() function displays the image at a location
  // in this case the point (0,0).
  image(img, 0, 0, width, height);
}