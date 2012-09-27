int buttonPinArray[] = {
  8, 9, 10}; // the pin addresses for our buttons

byte buttonStateBits; // we are using this as a binary number

int buttonIndex = 0;
const int nButtons = 3;

void setup() {
  Serial.begin(9600); // start the serial mode so we can debug on the computer

  buttonStateBits = 0; // clear out all bits

  // set up our button pins as input  
  for(buttonIndex=0; buttonIndex<nButtons;buttonIndex++) {
    pinMode(buttonPinArray[buttonIndex], INPUT);
  }  
}

void loop() {
  buttonStateBits = 0; // clear out all bits
  
  for(buttonIndex=0; buttonIndex<nButtons;buttonIndex++) {
    if(digitalRead(buttonPinArray[buttonIndex]) == HIGH) {
      bitSet(buttonStateBits,buttonIndex); // set the button index == 1
    }
  }

  // send out our single byte, which has information about all three buttons
  Serial.write(buttonStateBits);

  delay(10);
}






