// a collection of variables that
// represent a ball.

int numBalls = 60; // the number of balls I'm going to make
ArrayList<Ball> myBallArray = new ArrayList<Ball>();

void setup() {
  size(800,600,OPENGL);

  for (int i = 0; i < numBalls; i++) {
    int xPos = int(random(0, width));
    int yPos = int(random(0, height));
    int radius = int(random(10, 80));

    color strokeColor = color(255);

    float amt = float(i) / numBalls; // get a ratio of the current i / numBalls

      color fillColor = lerpColor(color(255, 0, 0, 180), color(255, 255, 0, 240), amt);

    int maxRadius = 100;
    int speed = int(random(1, 6));

    Ball thisBall = new Ball(xPos, yPos, radius, fillColor, strokeColor, maxRadius, speed);

    myBallArray.add(thisBall); // add the ball to this array.
  }
}

void draw() {
  background(0);

  for (int i = 0; i < myBallArray.size(); i++) {
    Ball thisBall = myBallArray.get(i);   
    thisBall.update();
    thisBall.draw();
  }
}

