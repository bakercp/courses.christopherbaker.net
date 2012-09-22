const int ledPin0 = 9;    // PWM
const int ledPin1 = 10;   // PDM
const int potPin = A0;

float filteredPotInput = 0; // filtered value
float alpha = 0.01; 

int pot = 0; // the potentiometer (or target value)

void setup()  { 
  // nothing happens in setup
}

void loop()  { 
  pot = analogRead(potPin); // read analog input 0-1023
  
  // do the filtering
  filteredPotInput = alpha * pot  + (1 - alpha) * filteredPotInput;
  
  // mape the filtered data to to values
  int ledMap0 = map(filteredPotInput,0,512,0,255);
  int ledMap1 = map(filteredPotInput,0,512,255,0);
  
  // write those inverted values to LEDs
  analogWrite(ledPin0,ledMap0);
  analogWrite(ledPin1,ledMap1);
  
  delay(5);
}


