/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches

also from Daniel Shifmann Learning Processing and
his multiple cool stuff online
*/

void setup()
{
  size(800,800);  
}

void draw()
{ 
  background(0);
  noFill();
  stroke(255);
  //sets the style for rendering line endings (e.g. ROUND)
  strokeCap(SQUARE);
  
  for (int i=0; i<width; i=i+10)
  { 
    //strokeWeight makes it less probable to be black
    //the closer to the height of the screen
    //because the strokeWeight is increasingly bigger
    //(note that background is black)
    strokeWeight(random(i)/10);
    line(0,i,width/3,i);  
  }

  for (int i=0; i<width; i=i+20)
  {  
    strokeWeight(random(i)/10);
    line(width/3,i,(width/3)*2,i);   
  }

  for (int i=0; i<width; i=i+30)
  {  
    strokeWeight(random(i)/10);
    line((width/3)*2,i,width,i);   
  }
}