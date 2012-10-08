const int ledPin0 = 9;    // PWM
const int ledPin1 = 10;   // PDM
const int potPin = A0; // Analog input

void setup()  { 
  // nothing happens in setup
}

void loop()  { 
  int pot = analogRead(potPin); // read analog input 0-1023
  
  // The goal of the following code samples is to demonstrate
  // several methods for creating a two "opposite" outputs
  // from a single input.  One output will go up, when the 
  // other goes down.  This inversion is something like a see-saw.
  // The resulting output is then mapped onto a 0-255 scale,
  // which is required for analogWrite() (analogWrite only knows how
  // to deal with values that range from 0-255).
  
  // Method 1 (Just the math)
  /*
  int invertedPot =  1024 - pot; // this range from 1023-0
  int ledMap0 =         pot * (255.0 / 1023.0);
  int ledMap1 = invertedPot * (255.0 / 1023.0);
  */

  // Method 2 (mapping inputs and outputs using Arduino's map function)
  int ledMap0 = map(pot,0,1023,0,255);
  int ledMap1 = map(pot,0,1023,255,0);
  
  
  // Write the analog (PWM) output
  analogWrite(ledPin0,ledMap0);
  analogWrite(ledPin1,ledMap1);
}


