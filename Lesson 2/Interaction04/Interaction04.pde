/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches
*/

void setup()
{  
  size(800,800);
  background(0,0);
}


void draw()
{
  //note that we do not use the background function to "clean" and reset the canvas.
  //here we are using fill but only with two arguments. The second one is the transparency
  // the higher the value, the less transparent it is
  //in this case, we only apply this efx to what happens inside the rectangle
  fill(0,10);
  stroke(255);
  //RectMODE. Draws the rectagle from the CENTER, which means the coordinated we insert within rect
  //are going to be the center of the rectangle
  rectMode(CENTER);
  rect(width/2,height/2,mouseX, mouseY);   
}