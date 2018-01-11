import processing.sound.*;

AudioIn in;
Amplitude rms;

// Declare a scaling factor
float scale=5;

// Declare a smooth factor
float smooth_factor=0.25;

// Used for smoothing
float sum;

Stern[] sterne = new Stern [1000];
float speed=1;


void setup() 
{
  fullScreen();
  
  for (int i=0;i<sterne.length;i++) 
  {
    sterne[i] = new Stern();
  }
  
    // Create the Input stream
  in = new AudioIn(this, 0);
  in.play();
  
  // Create and patch the rms tracker
  rms = new Amplitude(this);
  rms.input(in);
}

void draw() 
{
  background(0);
  
  // smooth the rms data by smoothing factor
  sum += (rms.analyze() - sum) * smooth_factor;  

  // rms.analyze() return a value between 0 and 1. It's
  // scaled to height/2 and then multiplied by a scale factor
  float rms_scaled=sum*(height/2)*scale;
  //rms_scaled=rms_scaled*((width*0.5)*0.1);
  
  println(rms_scaled);
  
  speed= map(rms_scaled,0,40,-5,5);
  //speed=-5;
  
  translate(width/2,height/2);
  
  for (int i=0;i<sterne.length;i++) 
  {
    if(sterne[i].sz<1) 
    {
      sterne[i] = new Stern();
    }
    sterne[i].update();
    sterne[i].show();
  }
}

class Stern 
{
  float sx;
  float x;
  float sy;
  float y;
  float sz;
  Stern() 
  {
    sx=random(-width/20,width/20);
    sy=random(-height/10,height/10);
    sz=random(100,1000);
  }
  
  void update() 
  {
    sz-=speed;
    x=map(sx/sz,0,1,0,width);
    y=map(sy/sz,0,1,0,height);
  }

  void show() 
  {
    ellipse(x,y,500/sz,500/sz);
    stroke(255);
    if(speed>0) 
    {
      //line(x,y,sx+((x-sx)/1.1),sy+(y-sy)/1.1);
    }
  }
}