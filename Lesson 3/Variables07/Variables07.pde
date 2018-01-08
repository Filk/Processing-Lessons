/*
This example is taken from Diogo Tudela

Draws a Bezier curve on the screen. 
These curves are defined by a series of anchor and control points. 
The first two parameters specify the first anchor point and 
the last two parameters specify the other anchor point. 
The middle parameters specify the control points which 
define the shape of the curve. 
Bezier curves were developed by French engineer Pierre Bezier. 
*/

void setup()
{
  size(displayWidth,600);
  background(255);
  smooth();
}

void draw()
{
  float pax = 0;
  float pay = random(0,height);
  
  float cpax = random(width/4,width/2);
  float cpay = random(height/3,2*(height/3));
 
  float pbx = width;
  float pby = random(0,height);
  
  float cpbx = random(width/2,3*(width/4));
  float cpby = random(height/3,2*(height/3));
  
  noFill();
  stroke(random(0,200));
  
  bezier(pax,pay,cpax,cpay,cpbx,cpby,pbx,pby);
}

void keyPressed(){
  save("bezier.tiff");
}