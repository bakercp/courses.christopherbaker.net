// without delay function (keeps on cycling!);

// define the pins for the LED outputs
const int LED0_PIN = 8; // const means it can't be changed later
int LED0_STATE = LOW;
long LED0_BLINK_RATE = 250;
long NEXT_LED0_BLINK = 0;

void setup() {                
  // initialize the digital pins for the LEDs as outputs.
  pinMode(LED0_PIN, OUTPUT);     
}

void loop() {
  long currentTime = millis();
  updateLED0(currentTime);
}

void updateLED0(long currentTime) {
  if(currentTime > NEXT_LED0_BLINK) {
     LED0_STATE = !LED0_STATE;    
     digitalWrite(LED0_PIN, LED0_STATE);
     NEXT_LED0_BLINK = currentTime + LED0_BLINK_RATE;
  }
}
