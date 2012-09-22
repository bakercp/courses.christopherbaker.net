// History-based smoothing using a moving average

float currentValue = 0;
float lastValue    = 0;

float currentAveragedValue = 0;
float lastAveragedValue = 0;

int xPosition = 0;

int[] history = new int[500]; // keep our history values

void setup() {
  size(800, 600);
  background(0);
  frameRate(30);

  // initialize the history array to all zeros
  for (int i = 0; i < history.length; i++) {
    history[i] = 0;
  }
}

void draw() {

  lastValue = currentValue; // set the last value current value;
  currentValue = mouseY; // current value to mouseY;  

  // draw a white line between current value and last value
  stroke(255);   
  line(xPosition, currentValue, xPosition-1, lastValue);


  // keep track of the last average
  lastAveragedValue = currentAveragedValue;
  // calculate a new average
  currentAveragedValue = historyAveragingFilter(mouseY);


  // draw a line connecting the current and last filtered positions
  stroke(0, 255, 0);   
  line(xPosition, currentAveragedValue, xPosition-1, lastAveragedValue);

  // move along the x axis
  xPosition++;

  // if the xPoistion goes off the screen, reset it and clear the screen
  if (xPosition > width) {
    xPosition = 0; 
    background(0);
  }
}

float historyAveragingFilter(int input) {
  // delete the oldest value from the history
  // add one value to the history (the input)
  // take the average of the history and return it;

  // shift the values to the left in the array
  for (int i = 0; i < history.length - 1; i++) {
    history[i] = history[i+1];
  } 

  history[history.length - 1] = input; // set last value to input

    // take the average of the entire array
  float sum = 0;
  for (int i = 0; i < history.length; i++) {
    sum += history[i];
  }
  float average = sum / history.length; // divide by the number of items

  return average;
}

