/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches
*/

void setup() 
{ 
  size(800, 800);
}

void draw () 
{
  fill(0, 4);
  noStroke();
  //this time we apply the fade efx to the totallity of the canvas
  rect(0, 0, width, height);

  // Stroke Color. Changing with the Mouse movement
  stroke(255, mouseX, mouseY);
  // horizontal line. following the mouse
  line(mouseX, mouseY, 800-mouseX, mouseY);
  
  //printing mouseX + SPACE + mouseY
  //printing is an important thing! It lets you see what's happening with something in particular
  //(e.g. a variable). It gets "printed" in the console window
  println(mouseX+" "+mouseY);
}