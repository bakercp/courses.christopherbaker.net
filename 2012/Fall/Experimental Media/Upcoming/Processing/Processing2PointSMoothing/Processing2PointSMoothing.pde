float targetX = 0; // the destination x
float targetY = 0; // the destination y

float filteredX = 0; // filtered (smoothed) x
float filteredY = 0; // filtered (smoothed) y

float alpha = 0.10; // the smoothing factor (between 1 and 0)

void setup() {
  size(600, 600);
  smooth();
  background(0);
}

void draw() {
  background(0);

  // draw filtered (smoothed) point
  stroke(255, 255, 0, 255);
  fill(255, 255, 0, 127);
  ellipse(filteredX, filteredY, 200, 200);


  // draw the destination point
  stroke(255, 0, 0, 255);
  fill(255, 0, 0, 127);
  ellipse(targetX, targetY, 100, 100);

  // do the smoothing calculations
  filteredX =  alpha * targetX + (1-alpha) * filteredX;
  filteredY =  alpha * targetY + (1-alpha) * filteredY;
}

// set a new target
void mousePressed() {
  targetX = mouseX;
  targetY = mouseY;
}

