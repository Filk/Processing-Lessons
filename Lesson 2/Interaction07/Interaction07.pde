/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches

Using pushMatrix() and popMatrix(), we can temporarily change
the coordinate system, letting us move the origin (0,0) point.

This is useful for drawing shapes onscreen at their x,y coordinates
and only think in terms of relative position onscreen.
*/

float angle = 0;      // angle of rotation (note: in radians)

void setup() 
{
  size(600,600);
}

void draw() 
{
  background(255);
  
  // fill/stroke for circle
  fill(255,150,0);
  stroke(0);
  
  // move coordinate system!
  pushMatrix();                  // go into "local" mode
  translate(width/2, height/2);  // move to center of window
  rotate(angle);                 // rotate
  ellipse(0,0, 100,100);         // note: center of screen is now 0,0!
  line(0,0, 50,0);               // draw a line so we can see rotation
  popMatrix();                   // exit "local" mode
  
  // 0,0 is now the top left again!
  ellipse(0,0, 100,100);
  
  // update rotation angle
  angle += radians(2);           // convert degrees (0-360) to radians (0-TWO_PI)
}
  
  
  
  
  
  
  
  
  
  
  