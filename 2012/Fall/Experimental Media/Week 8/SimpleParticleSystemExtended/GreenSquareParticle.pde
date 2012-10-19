class GreenSquareParticle extends Particle {  
   
  public GreenSquareParticle(PVector origin, PVector initialVelocity) {
    super(origin,initialVelocity);
  }
  
  void draw() {
    pushMatrix();
    translate(position.x,position.y);
    ellipseMode(CENTER);
    noStroke();
    fill(255,255,0,127);
    ellipse(0,0,20,20);
    popMatrix();
  } 
}
