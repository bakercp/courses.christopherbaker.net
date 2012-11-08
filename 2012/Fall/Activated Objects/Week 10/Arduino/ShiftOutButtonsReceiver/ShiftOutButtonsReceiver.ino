//Pin connected to ST_CP of 74HC595
int latchPin = 8;
//Pin connected to SH_CP of 74HC595
int clockPin = 12;
//Pin connected to DS of 74HC595
int dataPin = 11;

byte inByte = 0; // our incoming byte

void setup() {
  // set pins to output so you can control the shift register
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);

  // begin serial connection
  Serial.begin(9600);
}

void loop() {

  while(Serial.available() > 0) {
    inByte = Serial.read();    
  }

  // take the latchPin low so 
  // the LEDs don't change while you're sending in bits:
  digitalWrite(latchPin, LOW);
  // shift out the bits:
  shiftOut(dataPin, clockPin, MSBFIRST, inByte);  
  //take the latch pin high so the LEDs will light up:
  digitalWrite(latchPin, HIGH);

  // just set a little delay
  delay(10);
}

