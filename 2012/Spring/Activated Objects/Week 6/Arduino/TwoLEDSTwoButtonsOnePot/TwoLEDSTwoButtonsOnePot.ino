const int LED_PIN_0 = 9;
const int LED_PIN_1 = 10;

const int BUTTON_PIN_0 = 2;
const int BUTTON_PIN_1 = 3;

const int POT_PIN_0 = A0;

void setup() {
 Serial.begin(9600);
  
 pinMode(LED_PIN_0,OUTPUT);
 pinMode(LED_PIN_1,OUTPUT);

 pinMode(BUTTON_PIN_0,INPUT);
 pinMode(BUTTON_PIN_0,INPUT);
}

void loop() {
  digitalWrite(LED_PIN_0,digitalRead(BUTTON_PIN_0));
  digitalWrite(LED_PIN_1,digitalRead(BUTTON_PIN_1));
  
  Serial.println(analogRead(POT_PIN_0));
  
  delay(50);
}
