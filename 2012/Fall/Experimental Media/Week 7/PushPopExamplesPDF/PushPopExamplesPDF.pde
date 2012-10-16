import processing.pdf.*;

float angle0 = 0; // main angle
float angle1 = 0; // the sub angle

void setup() {
  size(600, 600, PDF, "MyPicture.pdf");
  frameRate(30);
  background(0);

  ellipseMode(CENTER);
}


void draw() {
  // this is the "clear" box
//  noStroke();
//  fill(0, 5); // this needs a low alpha value for trails
//  rect(0, 0, width, height);
  ///////////////////////////


  pushMatrix();
  translate(width/2, height/2);
  rotate(angle0);
  angle0 += radians(2);

  stroke(255, 0, 0, 200);
  fill(255, 0, 0, 127);

  ellipse(0, 0, 20, 20);
  line(0, 0, 200, 0);

  // now move our "origin" out to the end of the line
  pushMatrix();
  translate(200, 0);
  rotate(angle1);
  angle1 += radians(10);

  stroke(255, 0, 0, 200);
  fill(255, 255, 127);
  ellipse(0, 0, 10, 10);
  line(0, 0, 50, 0);

  pushMatrix();
  translate(50, 0);
  ellipse(0, 0, 10, 10);

  popMatrix();

  popMatrix();

  popMatrix();
  
  // do one revolution of the main angle, then quit.
  if(angle0 > 2*PI) {
    exit();
  }
  
}



