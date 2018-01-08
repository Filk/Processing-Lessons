/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches
*/

void setup() 
{
  size(600,600);
  background(0);
  smooth();
}

void draw()
{
  drawBlackCircle();
}


//Defining a function
void drawBlackCircle() 
{
  fill(255);
  strokeWeight(2);
  stroke(255);
  ellipse(width/2,height/2,200,200);
}