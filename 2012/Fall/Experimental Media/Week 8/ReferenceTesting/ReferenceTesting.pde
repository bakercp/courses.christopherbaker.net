PVector origin;

MyBallClass ballClass0;
MyBallClass ballClass1;

void setup() {
  size(800, 600);
  
  origin = new PVector(width/2, height/2, 0);
  
  //PVector pos0 = new PVector(100,100,0);
  PVector pos1 = new PVector(200,200,0);
  
  ballClass0 = new MyBallClass(origin);
  ballClass0.ballColor = color(255,255,0);
  ballClass1 = new MyBallClass(pos1);
  
}

void draw() {
  background(0);
  
    ballClass0.update();
  ballClass0.draw();
  ballClass1.update();
  ballClass1.draw();

  
  fill(255,0,0);
  noStroke();
  ellipseMode(CENTER);
  ellipse(origin.x,origin.y,10,10);
  
  

}



