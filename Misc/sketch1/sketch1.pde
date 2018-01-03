

void setup()
{
  size(600,400);
  frameRate(30);  
}

void draw()
{
  int meuFrame= frameCount%5;
  println(meuFrame);
  
  if(meuFrame>3)
  {
  background(255);
  stroke(150,100,5);
  strokeWeight(144);
  line(20,100,500,200);
  stroke(40,244,50);
  strokeWeight(mouseX);
  line(mouseX,mouseY,500,200);
  }

}