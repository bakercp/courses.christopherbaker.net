class Ball {
  int xPosition;
  int yPosition;
  int radius;
  color fillColor;
  color strokeColor;
  
  public Ball(int _xPosition, int _yPosition) {
    xPosition = _xPosition;
    yPosition = _yPosition;
  }
  
  void draw() {
    ellipseMode(CENTER);
    fill(fillColor);
    stroke(strokeColor);
    ellipse(xPosition, yPosition, radius, radius);
  }
}

