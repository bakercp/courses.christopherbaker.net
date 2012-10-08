/*
  Direct digital input to output
  When B0 is pressed -> LED0 is on.
  When B0 is pressed -> LED0 is on.
*/

// define the pins for the LED outputs
const int LED0_PIN = 8; // const means it can't be changed later
const int LED1_PIN = 9; 

// define the pins for the BUTTON inputs
const int B0_PIN = 6;
const int B1_PIN = 7;

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
  
  digitalWrite(LED0_PIN, b0_state);   // set the LED on
  digitalWrite(LED1_PIN, b1_state);   // set the LED on 
  
}
