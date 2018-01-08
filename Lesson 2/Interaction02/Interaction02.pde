/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches
*/

void setup() 
{  
  size(800, 600);
  background(255);
  smooth();
}

void draw() 
{ 
  //running the background function continuously, "cleans" everything so that everything can be
  //draw again
  background(255);
  
  if (mousePressed) 
  {
    fill(0);
  } 
  else 
  {
    fill(255,20,200);
  }

  //One can use any variable to control anything. One just needs to check if the function/method 
  //is expecting that kind of variable (int, float, string...)
  ellipse(mouseX, mouseY, 180, mouseX);
}