ParticleSystem ps;

void setup() {
  size(600, 600);
  frameRate(30);

  // initialize a default particle system
  ps = new ParticleSystem();

  // initialize a gravity vector
  ps.gravity = new PVector(0.0f, 0.5f, 0.0f);

  // this is the range of values that the origin can take
  ps.initialPositionRange.setMax(new PVector(width/2+40, height/2.0f, 0));
  ps.initialPositionRange.setMin(new PVector(width/2-40, height/2.0f, 0));

  // the maximum number of particles allowed on the stage at any one time
  ps.maxNumParticles = 500;

  // this is the range of particles that can be emitted per update
  ps.numParticlesEmittedPerUpdateRange.setMin(5);
  ps.numParticlesEmittedPerUpdateRange.setMax(20);

  // this is the range of particle ages
  ps.maxParticleAgeRange.setMax(60);
  ps.maxParticleAgeRange.setMin(10);

  // this is the initial velocity range, defined for each component
  ps.initialVelocityRange.setMax(new PVector(5, -5, 0));
  ps.initialVelocityRange.setMin(new PVector(-5, -15, 0));
}

void draw() {
  background(0);
  ps.update(); // update the particle system
  ps.draw(); // draw the particle system
}

