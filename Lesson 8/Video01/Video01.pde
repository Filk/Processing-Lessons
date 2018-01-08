// carregar e visualizar um vídeo 
import processing.video.*; 

Movie myMov; 

void setup() 
{ 
  myMov = new Movie(this, "bunny.avi");
  myMov.play(); // corre o vídeo uma vez do início ao fim
  //myMov.loop(); // corre o vídeo ciclicamente 
  size(400,400);
}

void draw() 
{
  image(myMov, 0, 0); // usa o tamanho default do vídeo na coordenada 0,0
  //image(myMov, 0, 0, width, height); // ajusta o tamanho do vídeo ao screen
}

// Called every time a new frame is available to read
void movieEvent(Movie myMov) 
{
  myMov.read();
}