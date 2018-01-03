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
  //mousePressed is another global variable which checks mouse activity, namely, if it is pressed or not
  //mouseX and mouseY checks the position of the mouse within the screen sketch
  //check the reference and read about this variable and see the main reference language page
  
  //We can also use conditionals to perform tasks
  //In this case, if mousePressed is true then paint the ellipse black, if not (i.e. else) paint it white  
  if (mousePressed) 
  {
    fill(0);
  } 
  else 
  {
    fill(255);
  }
  //stroke defines the color of the stroke (r,g,b)
  stroke(100,50,10);
  //strokeWeight defines the thickness of the stroke (in pixels)
  strokeWeight(10);
  ellipse(mouseX, mouseY, 80, 80);
}