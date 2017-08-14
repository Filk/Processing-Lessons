// M_6_1_03.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * more nodes and more springs
 *
 * KEYS
 * r             : reset positions
 * s             : save png
 * p             : save pdf
 */

import generativedesign.*;
import processing.sound.*;
import de.looksgood.ani.*;

Amplitude rms;
AudioIn input;

// an array for the nodes
Node[] nodes = new Node[100];
// an array for the springs
Spring[] springs = new Spring[0];

// dragged node
Node selectedNode = null;

float nodeDiameter = 16;
int strokeOrg=2;

void setup() 
{
  size(800, 800);
  background(255);
  smooth();
  noStroke();

  initNodesAndSprings();
  
    //Create an Audio input and grab the 1st channel
  input = new AudioIn(this, 0);
  
  // start the Audio Input
  input.start();
  input.amp(1.0);
  
  // create a new Amplitude analyzer
  rms = new Amplitude(this);
  
  // Patch the input to an volume analyzer
  rms.input(input);
  
  // you have to call always Ani.init() first!
  Ani.init(this);
}


void draw() {

  background(255);
  //fill(255, 10);
  //rect(0, 0, width, height);

  // let all nodes repel each other
  for (int i = 0 ; i < nodes.length; i++) {
    nodes[i].attract(nodes);
  } 
  // apply spring forces
  for (int i = 0 ; i < springs.length; i++) {
    springs[i].update();
  } 
  // apply velocity vector and update position
  for (int i = 0 ; i < nodes.length; i++) {
    nodes[i].update();
  } 

  // draw nodes
  stroke(0, 130, 164);
  int newstroke=int(map(rms.analyze(), 0, 0.5, 2, 15));
  Ani.to(this, 0.7, "strokeOrg", newstroke);
  strokeWeight(strokeOrg);
  for (int i = 0 ; i < springs.length; i++) 
  {
    line(springs[i].fromNode.x, springs[i].fromNode.y, springs[i].toNode.x, springs[i].toNode.y);
  }
  // draw nodes
  noStroke();
  for (int i = 0 ; i < nodes.length; i++) 
  {
    int newnodeDiameter=int(map(rms.analyze(), 0, 0.5, 2, 55));
    Ani.to(this, 0.7, "nodeDiameter", newnodeDiameter);
    fill(255);
    ellipse(nodes[i].x, nodes[i].y, nodeDiameter, nodeDiameter);
    fill(0);
    ellipse(nodes[i].x, nodes[i].y, nodeDiameter-4, nodeDiameter-4);
  }
  
  //println(rms.analyze());
  
  if (rms.analyze()>0.5)
  {
    initNodesAndSprings();
  }
  
}


void initNodesAndSprings() {
  // init nodes
  float rad = nodeDiameter/2;
  for (int i = 0; i < nodes.length; i++) {
    nodes[i] = new Node(width/2+random(-200, 200), height/2+random(-200, 200));
    nodes[i].setBoundary(rad, rad, width-rad, height-rad);
    nodes[i].setRadius(100);
    nodes[i].setStrength(-10);
  } 

  // set springs randomly
  springs = new Spring[0];

  for (int j = 0 ; j < nodes.length-1; j++) {
    int rCount = floor(random(1, 2));
    for (int i = 0; i < rCount; i++) {
      int r = floor(random(j+1, nodes.length));
      Spring newSpring = new Spring(nodes[j], nodes[r]);
      newSpring.setLength(40);
      newSpring.setStiffness(1);
      springs = (Spring[]) append(springs, newSpring);
    }
  }

}

void keyPressed() {
  if(key=='r' || key=='R') {
    background(255);
    initNodesAndSprings();
  }
}