/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches

also from Daniel Shifmann Learning Processing and
his multiple cool stuff online
*/

//declare array
float[] values = new float[100];

void setup ()
{
  size(500,500);
  smooth();
  
  //initialize array using a for loop
  for (int n = 0; n < values.length; n++) 
  {
    values[n] = random(0, 100);
  }
  
  background(255);

  for (int n = 0; n < values.length; n++)
  {
    fill(255,10);
    ellipse(random(0,width), random(0,height), values[n], values[n]);
  }
}

void draw()
{
  if(keyPressed)
  {
    if(key=='f')
    {
      setup();
    }
  }

}