/*
This example is taken from Daniel Shifmann Learning Processing
*/

// Example 16-5: Scrubbing forward and backward in movie

// If mouseX is 0, go to beginning
// If mouseX is width, go to end
// And everything else scrub in between

import processing.video.*;
Movie movie;

void setup() 
{
  size(320, 240);
  noCursor();
  movie = new Movie(this, "bunny.avi");
  movie.play();
}

void draw() 
{
  // Ratio of mouse X over width (i.e. 0.0-1.0)
  float ratio = mouseX / (float) width;
  println(ratio);

  // The jump() function allows you to jump immediately to a point of time within the video. 
  // duration() returns the total length of the movie in seconds.  
  movie.jump(ratio * movie.duration()); 

  // Read frame
  movie.read(); 
  // Display frame
  image(movie, 0, 0, width, height);
}