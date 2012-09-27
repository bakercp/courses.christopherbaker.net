int ledPinArray[] = {
  2, 3, 4}; // the pin addresses for our buttons

int count = 0;

byte ledStateBits; // we are using this as a binary number

void setup() {
  Serial.begin(9600); // start the serial mode so we can debug on the computer

  for(count=0; count<3;count++) {
    pinMode(ledPinArray[count], OUTPUT);
  } 
}

void loop() {
  while(Serial.available() > 0) {
    ledStateBits = Serial.read(); // read the incoming ButtonStateBits
  }

  for(count=0; count<3;count++) {
    digitalWrite(ledPinArray[count],bitRead(ledStateBits, count));
  }

  delay(10);
}






