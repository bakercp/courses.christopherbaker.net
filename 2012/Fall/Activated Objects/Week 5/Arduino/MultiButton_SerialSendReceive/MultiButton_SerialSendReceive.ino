// the local buttons that we will send
int buttonPinArray[] = {
  8, 9, 10}; // the pin addresses for our buttons

// the led pins that we will use to display the other side's buttons
int ledPinArray[] = {
  2, 3, 4}; // the pin addresses for our buttons

// the current state of our buttons (we send this to the other side)
byte buttonStateBits; // we are using this as a binary number

// the current state we received from the other side 
// we display it as led on / off.
byte ledStateBits; // we are using this as a binary number

int buttonIndex = 0;
const int nButtons = 3;

void setup() {
  Serial.begin(9600); // start the serial mode so we can debug on the computer

  buttonStateBits = 0; // clear out all bits
  ledStateBits = 0; // clear out all bits
 
  // set up our button pins as input  
  for(buttonIndex=0; buttonIndex<nButtons;buttonIndex++) {
    pinMode(buttonPinArray[buttonIndex], INPUT);
  }  

  // set up our led pins as output
  for(buttonIndex=0; buttonIndex<nButtons;buttonIndex++) {
    pinMode(ledPinArray[buttonIndex], OUTPUT);
  } 

}

void loop() {

  // read the incoming buttons state from the other side
  while(Serial.available() > 0) {
    ledStateBits = Serial.read(); // read the incoming ButtonStateBits
  }

  for(buttonIndex=0; buttonIndex<nButtons;buttonIndex++) {
    digitalWrite(ledPinArray[buttonIndex],bitRead(ledStateBits, buttonIndex));
  }

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

