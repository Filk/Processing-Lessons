/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches

also from Daniel Shifmann Learning Processing and
his multiple cool stuff online
*/

//declare array
int[] stuff = new int[3];

void setup ()
{
  size(500,500);
  smooth();
  //initialize array
  stuff[0] = 30; // The first element of the array equals 8
  stuff[1] = 50; // The second element of the array equals 3
  stuff[2] = 80; // The third element of the array equals 1
}

void draw()
{
  background(0);
  fill(255);
  ellipse(100,80,stuff[0],stuff[0]);
  fill(255,10,50);
  ellipse(250,250,stuff[1],stuff[1]);
  fill(10,40,255);
  ellipse(400,100,stuff[2],stuff[2]);
}