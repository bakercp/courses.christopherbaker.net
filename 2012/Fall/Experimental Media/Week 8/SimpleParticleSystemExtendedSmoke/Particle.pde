class Particle {
  int mass = 1;

  PVector position = new PVector();
  PVector velocity = new PVector();
  PVector acceleration = new PVector();
  int age = 0;
  int maxParticleAge = 100;
  boolean isAlive = true;

  public Particle(PVector origin, PVector initialVelocity) {
    position.set(origin);
    velocity.set(initialVelocity);
  }

  void update() {
    age++; // age the particle

    velocity.add(acceleration); // add our acceleration to our velocity
    position.add(velocity); // add our velocity to our position

    acceleration.set(0, 0, 0); // clear any acceleration that was added
  }

  float getLifeAmount() {
    return float(age) / maxParticleAge;
  }

  void draw() {
    pushMatrix();
    translate(position.x, position.y);//, position.z); // translate the particle to its position
    
    // determine the heading of the particle based on its 
    // velocity and rotate it in that direction
    rotate(velocity.heading2D()); 

    // figure out how much life it has left (in range 0-1)
    float lifeAmount = constrain( getLifeAmount(), 0, 1);

    // scale your drawing between 0 and 1 based on the particle's life amount
    scale(lifeAmount);
  
    // set fill alpha based on the life amount
    fill(255, (1.0f - lifeAmount) * 255);
    // set stroke alpha based on life amount
    stroke(255, (1.0f - lifeAmount) * 255);
  
    // set the stroke wieght to a little thicker
    strokeWeight(3);
    
    // draw the little arrow so that the tail trails
    // in the direction of travel
    ellipseMode(CENTER);
    ellipse(0, 0, 20, 20);
    line(-10, 0, -40, 0);

    popMatrix();
  }

}

