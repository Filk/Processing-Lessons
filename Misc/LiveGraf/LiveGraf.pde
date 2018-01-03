int alpha;
boolean linhas = false;
boolean squares = false;
int fillVar;
int speed;

void setup() 
{
  //size(1200, 600);
  fullScreen(1);
  background(255);
  smooth();
  fillVar=0;
  speed=45;
  alpha=10;
}


void draw() 
{
  fill(fillVar, alpha);
  noStroke();
  rect(0, 0, width, height);

  pencil();
  linhas_1();
  squares();
}

/*
*********************** KEYBOARD KEYS PRESSED *********************
 */

void keyPressed() 
{
  switch(key) 
  {
  case '1':
    if (alpha != 1) 
    {
      fillVar=0;
      alpha = 1;
    } 
    else 
    {
      fillVar=0;
      alpha = 10;
    }
    break;
    
  case '2':
    if (!linhas) 
    {
      fillVar=0;
      linhas = true;
    } 
    else 
    {
      fillVar=0;
      alpha = 1;
      linhas=false;
    }
    break;
    
  case '3':
    if (!squares) 
    {
      fillVar=255;
      alpha=10;
      squares = true;
    } 
    else 
    {
      fillVar=255;
      alpha=1;
      squares=false;
    }
    break;
  
  case 'f':
    speed=5;
    break;
  
  case 's':
    speed=45;
    break;
  }
}

/*
******************************************************************
************************** GRÁFICOS ******************************
 */
 
void pencil() 
{
  stroke(255);
  strokeWeight(15);
  if (mousePressed) 
  {
    noCursor();
    line(mouseX, mouseY, pmouseX*2, pmouseY*2);
  } 
  else 
  {
    cursor(CROSS);
  }
}

void linhas_1() 
{
  if (linhas) 
  {
    if(frameCount%speed==0)
    {
    float x = random(0,width);
    line(x, 0, x, height);
    }
  }
}

void squares() 
{
  if (squares) 
  {
    if(frameCount%speed==0)
    {
    int c1=(int) random(0,255);
    int c2=(int) random(0,255);
    int c3=(int) random(0,255);
    color bgQuadrado = color(c1,c2,c3);
    stroke(bgQuadrado);
    fill(bgQuadrado);
    float x = random(0,width);
    float y = random(0,height);
    rect(x, y, random(mouseX+10), random(mouseX+10));
    }
  }
}