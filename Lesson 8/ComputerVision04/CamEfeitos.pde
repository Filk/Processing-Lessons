import processing.video.*;

int example = 1;
float recent, old;
float opacNum = 0.0, line1 = 0.0;
Capture cam;
PFont myFont;
PImage ghoul;
 
void setup() 
{
  size(640, 480);
  old = millis();
  myFont = loadFont("AlNile-48.vlw");
  textFont(myFont);  
  stroke(0);
  ghoul = loadImage("ghoul.png");
  String[] cameras = Capture.list();
 
  if (cameras.length == 0) 
  {
    println("There are no cameras available for capture.");
    exit();
  } 
  else 
  {
    cam = new Capture(this, width,height); //inbyggd
    cam.start();
  }
}
 
void draw() 
{
  if (cam.available() == true) 
  {
    cam.read();
  }
  pushMatrix();
  translate(width,0);
  scale(-1,1);
 
  //default
  if (example == 1)
  {
    noTint();
    image(cam, 0, 0);
  }
  
  //tint  
  else if (example == 2)
  {
    tint(0, 153, 204);
    image(cam, 0, 0);
  }
  
  //filter
  else if (example == 3)
  {
    noTint();
    image(cam, 0, 0);
    filter(INVERT);
  }
  
  //tint as semi-transparency  
  else if (example == 4)
  {
    background(0);
    tint(255, 50);
    image(ghoul, 0, 0, 640, 480);
    image(cam, 0, 0);
  }
  
  //drawing the cam-feed image twice but smaller  
  else if (example == 5)
  {
    background(0);
    noTint();
    image(cam, 0, 0, 320, 240);
    image(cam, 320, 240, 320, 240);
  }
  
  //Andy warhol mode
  else if (example == 6)
  {
    tint(100, 200, 100);
    image(cam, 0, 0, 320, 240);
    noTint();
    image(cam, 0, 240, 320, 240);
    tint(200, 100, 100);  
    image(cam, 320, 0, 320, 240);
    tint(100, 100, 200);  
    image(cam, 320, 240, 320, 240);
  }
  
  //old webcam (moving Y coordinate, moving black line, 
  //changing opacity w tint and grayscale w filter
  else if (example == 7)
  {
    recent  = millis();
    if (recent - old > 100)
    {
      background(0);
      stroke(0);
      strokeWeight(1);
      opacNum = opacNum + .08;
      float n = noise(opacNum) * 512;
 
      // Draw the image to the screen at coordinate (0,0)
      tint(n);
      image(cam, 80, (n/10)+60, 480, 360);
      filter(GRAY);
 
      //First wandering line
      line1 = line1 + .08;
      n = noise(line1) * 640;    
      line(n, 0, n, height);   
      old = recent;
    }
  }
  popMatrix();
  
  //looking at one pixel and reacting to if it's dark
  //(= blue value is lower than 50)  
  if (example == 8)
  {
    stroke(#5555FF);
    strokeWeight(3);
    noFill();  
    noTint();
    cam.loadPixels();    
    if (cam.pixels.length > 0)
    {
      int loc = 20 + 20*width;
      float b = red(cam.pixels[loc]);
      image(cam, 0, 0);
      rect(10, 10, 20, 20);    
      if (b < 50)
      {
        fill(0);
        textSize(40);
        text("Black detected!", 250, 240);
      }
    }
  }
}
 
void keyPressed()
{
  if (key == '1') example = 1;
  if (key == '2') example = 2;
  if (key == '3') example = 3;
  if (key == '4') example = 4;
  if (key == '5') example = 5;
  if (key == '6') example = 6;
  if (key == '7') example = 7;    
  if (key == '8') example = 8;
}