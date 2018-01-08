/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches
*/

float posX=800/2; //starting position X
float posY=800/2; //starting position Y

float posXX=800/2; //previous position X
float posYY=800/2; //previous position Y

float move=15; // steps to move

void setup()
{ 
  size(800,800);
  background(0); 
}

void draw()
{  
  float randd = random(8);  // Defining probabilities. Like throwing a dice!
  if (randd<2) {posX+=move;}; //posX+=move is the same as posX=posX+move
  if (randd>=2 && randd<4) {posX-=move;};
  if (randd>=4 && randd<6) {posY-=move;};
  if (randd>=6 ) {posY+=move;};
 
  // Checking limits. It makes the line appear "on the other side" 
 if(posX>width) posX=0;
 if(posX<0) posX=width;
 if(posY>height) posY=0;
 if(posY<0) posY=height;
  
  stroke(255);
 
 //At this moment, posXX and posYY remains the same as the begging of draw() but 
 // posX or porY has changed due to the "dice" event at the beggining of draw()
 
 //Checking distance. It only draws a new lines if the distance between point of origin (posXX) 
 //and current point (posX) position is higher than 200px
 if(abs(posXX-posX)<200 && abs(posYY-posY)<200) 
 {
   line(posXX, posYY, posX, posY);
   //comment line and uncomment point to see the difference
   //point(posX, posY);
 }
   
  //updating previous with current position
  posXX=posX;
  posYY=posY;
}

void mouseReleased()
{
 background(0);  
}