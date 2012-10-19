class TroutParticle extends Particle {  
  PImage myTrout; // this is the trout image for this particular particle
  public TroutParticle(PVector origin, PVector initialVelocity, PImage myTrout) {
    super(origin,initialVelocity);
    this.myTrout = myTrout;
  }
  
  void draw() {
    pushMatrix();
    translate(position.x,position.y);
    
    // determine the heading of the particle based on its 
    // velocity and rotate it in that direction
    rotate(velocity.heading2D()-radians(180)); 

    // figure out how much life it has left (in range 0-1)
    float lifeAmount = constrain( getLifeAmount(), 0, 1);

    // scale your drawing between 0 and 1 based on the particle's life amount
    scale(lifeAmount);
  
    // set fill alpha based on the life amount
    //fill(255, (1.0f - lifeAmount) * 255);
    // set stroke alpha based on life amount
    //stroke(255, (1.0f - lifeAmount) * 255);

    tint(255, (1.0f - lifeAmount) * 255);
    
    rectMode(CENTER);
    noStroke();
    noFill();
    
    image(myTrout,-myTrout.width/2,-myTrout.height/2);
    
    popMatrix();
  } 
}
