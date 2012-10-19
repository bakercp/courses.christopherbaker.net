class GreenSquareParticle extends Particle {  
   
  public GreenSquareParticle(PVector origin, PVector initialVelocity) {
    super(origin,initialVelocity);
  }
  
  void draw() {
    pushMatrix();
    translate(position.x,position.y);
    rectMode(CENTER);
    noStroke();
    fill(0,255,0,127);
    rect(0,0,20,20);
    popMatrix();
  } 
}
