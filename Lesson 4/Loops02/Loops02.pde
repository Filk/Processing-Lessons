void setup()
{
  size(480, 270);
  background(255);
}

void draw()
{ 
  //determines the spacing between each circle
  int espacamento=53;
  
  //simple loop!
  //x starting value is 0 (x=0)
  //the condition is defined. while x is less than 5 (x<5)
  //x is increased by one value (x++) in each iteration
  for (int x = 0; x<8; x++) 
  { 
    ellipse (x*espacamento, 150, 30,30);
  }
}