
// without delay function (keeps on cycling!);

// define the pins for the LED outputs
const int LED0_PIN = 8; // const means it can't be changed later
int LED0_STATE = LOW;
long LED0_BLINK_RATE = 250;
long NEXT_LED0_BLINK = 0;
volatile boolean isLED0_BLINKING = true;

const int LED1_PIN = 9; // const means it can't be changed later
int LED1_STATE = LOW;
long LED1_BLINK_RATE = 650;
long NEXT_LED1_BLINK = 0;
volatile boolean isLED1_BLINKING = true;

// define the pins for the BUTTON inputs
const int B0_INTERRUPT_NUM = 0; // digital pin 2!!!
const int B1_INTERRUPT_NUM = 1; // digital pin 3!!!


void setup() {                
  // initialize the digital pins for the LEDs as outputs.
  pinMode(LED0_PIN, OUTPUT);  
  pinMode(LED1_PIN, OUTPUT);    

  // initialize the digital pins for the buttons as inputs.
  attachInterrupt(B0_INTERRUPT_NUM, updateLED0, RISING);     
  attachInterrupt(B1_INTERRUPT_NUM, updateLED1, RISING);     
  
}

void loop() {
  updateAllLEDS();
}

void updateAllLEDS() {
  long currentTime = millis();
  updateLED0(currentTime);
  updateLED1(currentTime);
}

void updateLED0(long currentTime) {
  if(currentTime > NEXT_LED0_BLINK && isLED0_BLINKING) {
     LED0_STATE = !LED0_STATE;    
     digitalWrite(LED0_PIN, LED0_STATE);
     NEXT_LED0_BLINK = currentTime + LED0_BLINK_RATE;
  }
}

void updateLED1(long currentTime) {
  if(currentTime > NEXT_LED1_BLINK && isLED1_BLINKING) {
     LED1_STATE = !LED1_STATE;    
     digitalWrite(LED1_PIN, LED1_STATE);
     NEXT_LED1_BLINK = currentTime + LED1_BLINK_RATE;
  }
}

void updateLED0() {
  isLED0_BLINKING = !isLED0_BLINKING;
}

void updateLED1() {
  isLED1_BLINKING = !isLED1_BLINKING;
}



