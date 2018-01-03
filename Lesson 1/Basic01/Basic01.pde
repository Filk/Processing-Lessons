/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches
*/

// void setup() function is the first function to run and it runs just one time.  
void setup() 
{  
  //screen (think of it as a canvas) size width,height (in pixels)
  size(800, 600);
  background(255);
}

// void draw() function loops continuously until you close the sketch window.
void draw() 
{ 
  //fill is a method to paint the interior of a shape
  fill(0);
  //ellipse (posX, posY, size, size) 
  ellipse(400, 300, 80, 80);
}