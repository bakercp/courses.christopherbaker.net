// define the pins for the LED outputs
const int LED0_PIN = 8; // const means it can't be changed later
long LED0_BLINK_RATE = 500;
void setup() {                
  // initialize the digital pins for the LEDs as outputs.
  pinMode(LED0_PIN, OUTPUT);     
}

void loop() {
  // read the button states
  digitalWrite(LED0_PIN, HIGH);   // set the LED on   
  delay(250); // wait
  digitalWrite(LED0_PIN, LOW);   // set the LED on   
  delay(250); // wait
  
  
    digitalWrite(LED1_PIN, HIGH);   // set the LED on   
  delay(650); // wait
  digitalWrite(LED0_PIN, LOW);   // set the LED on   
  delay(650); // wait
  
  
}
