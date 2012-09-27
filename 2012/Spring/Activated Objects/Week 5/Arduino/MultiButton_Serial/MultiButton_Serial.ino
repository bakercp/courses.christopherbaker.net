int buttonPinArray[] = {
  8, 9, 10}; // the pin addresses for our buttons
int ledPinArray[] = {
  2, 3, 4}; // the pin addresses for our buttons
int buttonStateArray[] = {
  LOW,LOW,LOW}; // this is the current state of our buttons

const int ledPin = 13;

int count = 0;
int timer = 100;

void setup() {
  Serial.begin(9600); // start the serial mode so we can debug on the computer

  // set up our button pins as input  
  for(count=0; count<3;count++) {
    pinMode(buttonPinArray[count], INPUT);
  } 

  for(count=0; count<3;count++) {
    pinMode(ledPinArray[count], OUTPUT);
  } 


  pinMode(ledPin, OUTPUT);
}

void loop() {
  for(count=0; count<3;count++) {
    buttonStateArray[count] = digitalRead(buttonPinArray[count]);
  }

  // write the bytes to the serial output
  for(count=0; count<3;count++) {
    digitalWrite(ledPinArray[count],buttonStateArray[count]);
  }

  //  Serial.println();

  delay(10);
}






