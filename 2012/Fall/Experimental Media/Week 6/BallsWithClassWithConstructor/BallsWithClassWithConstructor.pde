// a collection of variables that
// represent a ball.

Ball theBall;
Ball theOtherBall;

void setup() {
  size(800, 600); 

  // initialization of variables of first ball
  theBall = new Ball(100, 
  100, 
  30, 
  color(255, 255, 0), 
  color(255, 0, 0),
  120,3
  );

  // initialize the other ball
  theOtherBall = new Ball(500, 100, 
                          80, color(0, 255, 0), 
                          color(255, 255, 0),
                          200,
                          1);
                          
  theOtherBall.radius = 60;
}

void draw() {
  background(0);

  theBall.update();
  theOtherBall.update();

  theBall.draw();
  theOtherBall.draw();
  
}

