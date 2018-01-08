/* 
These lessons are based, copied and sometimes modified from the following repos:
visiophone/LSI
jeffThompson/ProcessingTeachingSketches
 */

void setup()
{
  size(600,600);
  smooth();
  
  int s=second();  // the "second();" variable returns the real time 0-59
  println("segundos:" + " " + s);
  int m=minute();  // mintes 0-59
  println("minutos:" + " " + m);
  int h=hour();    // hours 0-23
  println("horas:" + " "+ h);
}

void draw()
{
  noStroke();
  fill(100,100,100,80);         // makes refresh semi-transparent
  rect(0,0, width,height);      // size of the entire screen

  int s=second();  // the "second();" variable returns the real time 0-59
  int m=minute();  // mintes 0-59
  int h=hour();    // hours 0-23

  // Hours - draw first so behind everything else
  noStroke();
  fill(0,0,0);
  ellipse(width/2,width/2, h*5,h*5);

  // Minutes
  fill(255,0,0,127);                    // Fills red with ~50% trans
  ellipse(width/2,width/2, m*10,m*10);  // Draws a circle starting at 300,300, is s*5
  
  // (0-59 * 10 = max of 600 wide)
  // Seconds
  fill(255,255,255,50);
  ellipse(width/2,width/2, s*10,s*10);
}