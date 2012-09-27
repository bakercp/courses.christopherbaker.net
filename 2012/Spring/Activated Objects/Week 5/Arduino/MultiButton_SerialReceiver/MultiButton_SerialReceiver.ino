int ledPinArray[] = {
  2, 3, 4}; // the pin addresses for our buttons

int buttonIndex = 0;
const int nButtons = 3;

byte ledStateBits; // we are using this as a binary number

void setup() {
  Serial.begin(9600); // start the serial mode so we can debug on the computer

  for(buttonIndex=0; buttonIndex< nButtons;buttonIndex++) {
    pinMode(ledPinArray[buttonIndex], OUTPUT);
  } 
}

void loop() {
  while(Serial.available() > 0) {
    ledStateBits = Serial.read(); // read the incoming ButtonStateBits
  }

  for(buttonIndex=0; buttonIndex < nButtons; buttonIndex++) {
    digitalWrite(ledPinArray[buttonIndex],bitRead(ledStateBits, buttonIndex));
  }

  delay(10);
}






