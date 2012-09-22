// constants won't change. They're used here to 
// set pin numbers:
const int buttonPin = 2;     // the number of the pushbutton pin
const int ledPin    = 13;      // the number of the LED pin

// variables will change:
int buttonState = 0;         // variable for reading the pushbutton status

int processingButtonState = 0;

void setup() {
  // initialize the LED pin as an output:
  pinMode(ledPin, OUTPUT);      
  // initialize the pushbutton pin as an input:
  pinMode(buttonPin, INPUT);
  
  Serial.begin(9600); // start up the serial object   
}

void loop(){
  // read the state of the pushbutton value:
  buttonState = digitalRead(buttonPin);
  
  // read the latest serial data from processing
  while(Serial.available() > 0) {
     processingButtonState = Serial.read();
  }
  
  digitalWrite(ledPin,processingButtonState);
  
  Serial.write(buttonState); // \n
  
  delay(50);
}
