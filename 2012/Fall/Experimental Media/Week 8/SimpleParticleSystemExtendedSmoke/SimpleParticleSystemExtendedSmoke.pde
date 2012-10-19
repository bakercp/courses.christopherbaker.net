ParticleSystem ps;

ArrayList<PImage> myImages = new ArrayList<PImage>();

void setup() {
  size(600, 600);
  frameRate(30);

  loadImages("trout/");

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
  
  //addGreenParticle();
  //addNormalParticle();
  addTroutParticle();
}

void addTroutParticle() {
  PVector initialPosition = new PVector(width/2, height/2, 0);
  PVector initialVelocity = ps.initialVelocityRange.getRandom();

  int troutIndex = int(random(0,myImages.size()));
  
  PImage img = myImages.get(troutIndex);

  TroutParticle p = new TroutParticle(initialPosition, initialVelocity, img);

  ps.addParticle(p);
}

void addGreenParticle() {
  PVector initialPosition = new PVector(width/2, height/2, 0);
  PVector initialVelocity = ps.initialVelocityRange.getRandom();

  GreenSquareParticle p = new GreenSquareParticle(initialPosition, initialVelocity);

  ps.addParticle(p);
}

void addNormalParticle() {
  PVector initialPosition = new PVector(width/2, height/2, 0);
  PVector initialVelocity = ps.initialVelocityRange.getRandom();

  Particle p = new Particle(initialPosition, initialVelocity);

  ps.addParticle(p);
}

void loadImages(String folderNameWithinDataFolder) {
  
    // look inside the data folder
    String fullFolderPath = dataPath(folderNameWithinDataFolder);
    
    // create a java "file", which can also represent a folder
    File folder = new File(fullFolderPath);

    // list the files in the data folder, passing the filter as parameter
    File[] files = folder.listFiles();

    // go through the list of files and just return the ones needed
    for (File file : files) {
      String filename = file.getAbsolutePath(); // get the full, abolute path
        
      if (filename.endsWith(".png") || filename.endsWith(".jpg") || filename.endsWith(".gif")) {
        PImage img = loadImage(filename); // load image
        myImages.add(img); // add loaded image to array.
      }
    }


  
}



