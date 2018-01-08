/*
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches
*/

PFont mono;
int area;

void setup() 
{
  size(600,600);
  background(0);
  // use a function to compute the area of the window
  area = computeArea(width, height);
  mono = loadFont("BookAntiqua-48.vlw");
  println(area);
}

void draw()
{
  textFont(mono, 32);
  fill(255);
  textAlign(CENTER);
  text("a área do meu screen é:",width/2,(height/2)-50);
  text(str(area),width/2,height/2);
  textAlign(LEFT);
  text("Viva o Processing!",20,(height/2)+150);
}


// our function, which returns an integer
// arguments are also two ints for width and height
// to compute the area
int computeArea(int w, int h) 
{
  int area = w * h;  // calculate area
  return area;       // return the result!
}