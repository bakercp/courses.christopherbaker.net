class MyBallClass {
  
  PVector position;
  
  color ballColor = color(255);
  
  public MyBallClass(PVector pos) {
     position = pos.get();
  }
 
  public void update() {
    position.x = position.x + 10;
    if(position.x > width) position.x = 0;
  }
  
  public void draw() {
    fill(ballColor);
    noStroke();
    ellipseMode(CENTER);
    ellipse(position.x, position.y,20,20);
    
  }
}
