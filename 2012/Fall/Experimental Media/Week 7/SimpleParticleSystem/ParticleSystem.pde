class ParticleSystem {
  // our collection of particles
  ArrayList<Particle> particles = new ArrayList<Particle>();

  int maxNumParticles; // this is the maximum number of particles that we allow

  RangeFloat maxParticleAgeRange; // we can choose random values from this range
  RangeFloat numParticlesEmittedPerUpdateRange; // choose random values from this range

  PVector gravity; // the partical system's global gravity

  // the range of x/y/z values that the origin can take
  // i.e. where do the particles come from when they are born?
  RangePVector initialPositionRange;
  
  // the initial range of velocities that we choose from
  RangePVector initialVelocityRange;

  // a default constructor
  public ParticleSystem() {
    this(new PVector()); // "this" calls the constructor below
  }
  
  // a simple constructor
  public ParticleSystem(PVector o) {
    // "this" calls the constructor below
    this(new RangePVector(o,o), new PVector(0,.5));
  }

  // a more complex constructor
  public ParticleSystem(RangePVector o, PVector g) {
    // set the origin range (it's not actually a range, it's two of the same point)
    initialPositionRange = new RangePVector(o.getMin(), o.getMax());;
    // get a copy of the gravity vector
    gravity = g.get();

    // set the max number of particles
    maxNumParticles = 1000;
    
    // set the update range
    numParticlesEmittedPerUpdateRange = new RangeFloat(5, 15);
  
    // set the age range
    maxParticleAgeRange = new RangeFloat(10, 60);
    
    // set the velocity range
    initialVelocityRange = new RangePVector(new PVector(-5,-15,0), new PVector(5,-5,0));

  }

  // "kill" particle "p" if its age is too old
  void killParticleIfTooOld(Particle p) {
    if (p.age > p.maxParticleAge) {
      p.isAlive = false;
    }
  }

  // "kill" particle "p" if it moves off screen
  void killParticleIfOffscreen(Particle p) {
    if (p.position.x > width  || p.position.x < 0 || 
      p.position.y > height || p.position.y < 0) {
      p.isAlive = false;
    }
  }

  // run both of the above particle killing routines
  void tryToKillParticle(Particle p) {
    killParticleIfTooOld(p);
    killParticleIfOffscreen(p);
  }

  void update() {
    // create a particle iterator
    Iterator<Particle> particleIterator = particles.iterator();

    // cycle through the particles using the iterator
    while (particleIterator.hasNext ()) {
      // get the next particle
      Particle p = particleIterator.next(); 

      // try to kill the current particle
      tryToKillParticle(p);

      // if the particle is alive, then add gravity and update it
      if (p.isAlive) { 
        p.acceleration.add(gravity);
        p.update();
      } 
      else {
        // if the particle is dead, then remove it from the system
        particleIterator.remove();
      }
    }

    // create new particles if required
    
    // figure out how many particles we are going to try to emit based
    // on our numParticlesEmittedPerUpdate range.
    int numParticlesToEmit = (int)numParticlesEmittedPerUpdateRange.getRandom();

    // cycle through the particles and create them
    for (int i = 0; i < numParticlesToEmit; i++) {
      // get an initial velocity from our range
      PVector initialVelocity = initialVelocityRange.getRandom(); // choose from our range
      // get an initial position from our origin range
      PVector initialPosition = initialPositionRange.getRandom();
      
      int maximumAge = (int) maxParticleAgeRange.getRandom();

      // create a new particle with initialposition and velocity
      Particle p = new Particle(initialPosition, initialVelocity);

      // set the maximum age based on our range
      p.maxParticleAge = maximumAge;

      // add only if there is room in our particle system
      if (particles.size() < maxNumParticles) {
        particles.add(p);
      } 
      else {
        // if we already have too many particles, we "break" out of the loop.
        break;
      }
    }
  }

  // when draw is called, just cycle through and draw each particle
  void draw() {
    for (Particle p : particles) {
      p.draw();
    }
  }
}

