int buttonPinArray[] = {
  8, 9, 10}; // the pin addresses for our buttons

///
byte buttonStateBits; // we are using this as a binary number

int count = 0;

void setup() {
  Serial.begin(9600); // start the serial mode so we can debug on the computer

  buttonStateBits = 0; // clear out all bits

  // set up our button pins as input  
  for(count=0; count<3;count++) {
    pinMode(buttonPinArray[count], INPUT);
  } 
}

void loop() {
  
  buttonStateBits = 0; // clear out all bits
  
  for(count=0; count<3;count++) {
    if(digitalRead(buttonPinArray[count]) == HIGH) {
      bitSet(buttonStateBits,count); // set the button index == 1
    }
  }

  // send out our single byte, which has information about all three buttons
  Serial.write(buttonStateBits);

  delay(10);
}






