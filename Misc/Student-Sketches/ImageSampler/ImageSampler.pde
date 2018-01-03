PImage [] imagens = new PImage[4];
boolean comTrans=false;

void setup() 
{
  size(800, 600);
  for (int i=0; i<imagens.length; i++)
  {
  imagens[i] = loadImage(i+".jpg");
  }
}

void draw() 
{
  if(keyPressed)
  {
    if (comTrans)
    {
      tint(54,255,24,15);
    }
    else
    {
      noTint();
    }
    
    if(key=='1')
    {  
      image(imagens[0], 0, 0);
    }
    if(key=='2')
    {
      image(imagens[1], 100, 150);
    }
    if(key=='3')
    {
      image(imagens[2], 0, 0, width, height);
    }
    if(key=='4')
    {
      image(imagens[3], 0, 0, width, height);
    }
    if(key=='r')
    {
      background(255);
    }
  }
}

void keyPressed()
{
  if(keyPressed && key=='t')
  {
    comTrans=!comTrans;
  }
}