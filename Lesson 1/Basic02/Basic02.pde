/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches

By the way, this is a comment! A comment is not computed in the sketch but is very helpfull to explain long sketchs
*/
  
void setup() 
{  
  size(800, 600);
  //paints the background with a specific color (r,g,b).
  background(255);
  //smooth is a built-in function to soften graphics
  smooth();
}

void draw() 
{ 
  //inside draw, each instruction is completed before the next one until the end. Sequence order matters!
  fill(0);
  //"most" of the functions require arguments to perform! In this case, the ellipse needs to know a
  //position to be draw (100,500) and needs to know its size (80)
  ellipse(100, 500, 80, 80);
  fill(100,100,40);
  //width and height are global variables which contain the width and height of the sketch window
  ellipse(width/2, height/2, 100, 100);
  fill(200,15,90);
  //a different shape! rect (posX, posY, width, heigth)
  rect(100,400,100,69);
}