class Ball {
  int xPosition;
  int yPosition;
  int radius;
  color fillColor;
  color strokeColor;
  
  int maxRadius;
  int speed;
  
  boolean isExpanding = true;
  
  public Ball(int _xPosition, int _yPosition,
              int _radius, color _fillColor,
              color _strokeColor, int _maxRadius, int _speed) {
                
    xPosition = _xPosition;
    yPosition = _yPosition;
    
    radius = _radius;
    fillColor = _fillColor;
    strokeColor = _strokeColor;
    
    maxRadius = _maxRadius;
    speed = _speed;
    
  }

  void update() {
    //radius = (radius + speed) % maxRadius;
    if(isExpanding) {
      if(radius > maxRadius) {
        isExpanding = false;        
      } 
    } else {
      if(radius < 0) {
        isExpanding = true;
      } 
    }
    
    if(isExpanding) {
      radius += speed;
    } else {
      radius -= speed;
    }
    
    
  }

  void draw() {
    //ellipseMode(CENTER);
    //fill(fillColor);
    //stroke(strokeColor);
    //ellipse(xPosition, yPosition, radius, radius);
    pushMatrix();
    translate(xPosition,yPosition);
    sphere(radius);
    popMatrix();
  }
}

