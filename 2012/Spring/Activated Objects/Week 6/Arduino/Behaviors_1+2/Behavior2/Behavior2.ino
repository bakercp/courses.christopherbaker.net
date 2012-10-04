/*
  Direct digital input to output
  When B0 is pressed -> LED0 is on.
  When B0 is pressed -> LED0 is on.

*/

// define the pins for the LED outputs
const int LED0_PIN = 8; // const means it can't be changed later
const int LED1_PIN = 9; 
// we are keeping track of the variables for LED state
int LED0_STATE = LOW;
int LED1_STATE = LOW;

// define the pins for the BUTTON inputs
const int B0_PIN = 6;
const int B1_PIN = 7;
int B0_STATE = LOW;
int B1_STATE = LOW;
int LAST_B0_STATE = LOW;
int LAST_B1_STATE = LOW;

long debounceDelay = 50;    // the debounce time; increase if the output flickers


void setup() {                
  // initialize the digital pins for the LEDs as outputs.
  pinMode(LED0_PIN, OUTPUT);     
  pinMode(LED1_PIN, OUTPUT);     
  // initialize the digital pins for the buttons as inputs.
  pinMode(B0_PIN, INPUT);     
  pinMode(B1_PIN, INPUT);     
}

void loop() {
  // read the button states
  int b0_state = digitalRead(B0_PIN);
  int b1_state = digitalRead(B1_PIN);
 
  if(b0_state == HIGH) {
     if(LAST_B0_STATE == LOW) {
        LED0_STATE = !LED0_STATE;
        digitalWrite(LED0_PIN,LED0_STATE);
        delay(debounceDelay);
     }
     LAST_B0_STATE = HIGH;
  } else {
     LAST_B0_STATE = LOW;
  }
  
 if(b1_state == HIGH) {
     if(LAST_B1_STATE == LOW) {
        LED1_STATE = !LED1_STATE;
        digitalWrite(LED1_PIN,LED1_STATE);
        delay(debounceDelay);
     }
     LAST_B1_STATE = HIGH;
  } else {
     LAST_B1_STATE = LOW;
  }


  
}
