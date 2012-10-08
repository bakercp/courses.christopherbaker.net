// a collection of variables that
// represent a ball.

Ball theBall;
Ball theOtherBall;

void setup() {
  size(800, 600); 

  // initialization of variables of first ball
  theBall = new Ball();
  theBall.xPosition = 100;
  theBall.yPosition = 100;
  theBall.radius = 30;
  theBall.fillColor = color(255, 255, 0);
  theBall.strokeColor = color(255, 0, 0);

  // initialize the other ball
  theOtherBall = new Ball();
  theOtherBall.xPosition = 500;
  theOtherBall.yPosition = 100;
  theOtherBall.radius = 60;
  theOtherBall.fillColor = color(0, 255, 0);
  theOtherBall.strokeColor = color(255, 255, 0);
}

void draw() {
  background(0);
  
  theBall.draw();
  theOtherBall.draw();
}

