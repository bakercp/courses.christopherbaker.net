// define the pins for the LED outputs
const int LED0_PIN = 8; // const means it can't be changed later
const int LED1_PIN = 9; 

// we are keeping track of the variables for LED state
volatile int LED0_STATE = LOW;
volatile int LED1_STATE = LOW;

// define the pins for the BUTTON inputs
const int B0_INTERRUPT_NUM = 0; // digital pin 2!!!
const int B1_INTERRUPT_NUM = 1; // digital pin 3!!!

void setup() {                
  // initialize the digital pins for the LEDs as outputs.
  pinMode(LED0_PIN, OUTPUT);     
  pinMode(LED1_PIN, OUTPUT);     
  
  // initialize the digital pins for the buttons as inputs.
  attachInterrupt(B0_INTERRUPT_NUM, updateLED0, CHANGE);     
  attachInterrupt(B1_INTERRUPT_NUM, updateLED1, CHANGE);     
}

void loop() {
  digitalWrite(LED0_PIN, LED0_STATE);
  digitalWrite(LED1_PIN, LED1_STATE);
}

void updateLED0() {
  LED0_STATE = !LED0_STATE; // invert the state
}

void updateLED1() {
  LED1_STATE = !LED1_STATE; // invert the state
}



