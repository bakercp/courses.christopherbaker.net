PImage puppy;
float angle = 0;

void setup() {
  size(500, 500);
  puppy=loadImage("puppy.jpeg");
}

void draw() {
  background(0);
  stroke(255,0,0);
  angle += radians(1);
  pushMatrix(); // push
  translate(width/2,height/2);
  scale(2);
  rotate(angle); // spinning
  translate(-puppy.width/2,-puppy.height/2);
  image(puppy,0,0); // puppy
  popMatrix(); // pop
}



