boolean criaNovaEstrela;
ArrayList <Star> srVitor = new ArrayList<Star>();
int tempoCriarEstrela;
PImage lactea;

void setup ()
{
  size(800,500);
  smooth();
  background(0);
  
  criaNovaEstrela=true;
  srVitor.add(new Star());
  
  tempoCriarEstrela=(int) random(100,1000);
  
  lactea = loadImage("milky.jpg");
  
  noCursor();
}

void draw()
{
  image(lactea,0,0);
  
  if(srVitor.size()>0)
  {
    for (int i=0; i<srVitor.size(); i++)
    {
      srVitor.get(i).desenhaEstrela();
      
      if (srVitor.get(i).brilho<2)
      {
        srVitor.remove(i);
      }
    }
  }
  
  
  if(millis()%tempoCriarEstrela>tempoCriarEstrela-10)
  {
    srVitor.add(new Star());
    tempoCriarEstrela=(int) random(100,1000);
  }
}

class Star
{
  int posX, posY, raioEllipse; 
  float brilho, decremento;
  
  //constructor
  Star()
  {
    posX= (int) random(0, width);
    posY= (int) random(0, height);
    raioEllipse = (int) random(2, 20);
    brilho=255;
    decremento=random(0,100)/100;
  }
  
  void desenhaEstrela()
  {
    fill(brilho);
    stroke(brilho);
    ellipse(posX, posY, raioEllipse,raioEllipse);
    brilho=brilho-decremento;
  }
}