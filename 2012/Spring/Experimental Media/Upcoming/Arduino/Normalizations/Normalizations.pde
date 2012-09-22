const int ledPin0 = 9;    // PWM
const int ledPin1 = 10;   // PDM
const int potPin = A0;

void setup()  { 
  // nothing happens in setup
}

void loop()  { 
  int pot = analogRead(potPin); // read analog input 0-1023
  //int invertedPot =  1024 - pot; // this range from 1023-0

  //int ledMap0 = map(pot,        0,1023,0,255);
  //int ledMap1 = map(invertedPot,0,1023,0,255);

  //int ledMap0 =         pot * (255.0 / 1023.0);
  //int ledMap1 = invertedPot * (255.0 / 1023.0);

  int ledMap0 = map(pot,0,1023,0,255);
  int ledMap1 = map(pot,0,1023,255,0);
  
  analogWrite(ledPin0,ledMap0);
  analogWrite(ledPin1,ledMap1);
}


