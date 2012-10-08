int pinArray[] = {
  2, 3, 4, 5, 6, 7};
int buttonPinArray[] = {
  8, 9, 10}; // the pin addresses for our buttons
int buttonStateArray[] = {
  LOW,LOW,LOW}; // this is the current state of our buttons

int count = 0;
int timer = 100;

void setup() {
  Serial.begin(9600); // start the serial mode so we can debug on the computer

  // we make all the declarations at once
  // set up our led pins as outpu
  for (count=0;count<6;count++) {
    pinMode(pinArray[count], OUTPUT);
    // my comment
  }

  // set up our button pins as input  
  for(count=0; count<3;count++) {
    pinMode(buttonPinArray[count], INPUT);
  } 
}

void loop() {

  for(int i = 0; i < 10; i+=10) {

    // this is our button reading for loop
    // inside of this for-loop, we will read and 
    // store the values of the buttons.

    //        buttonStateArray[0] = digitalRead(buttonPinArray[0]);
    //        buttonStateArray[1] = digitalRead(buttonPinArray[1]);
    //        buttonStateArray[2] = digitalRead(buttonPinArray[2]);

    for(count=0; count<3;count++) {
      buttonStateArray[count] = digitalRead(buttonPinArray[count]);
    }

    //    for(count=0; count<3;count++) {
    //      Serial.print(buttonStateArray[count]); // print out the current value
    //      Serial.print(","); // print a comma
    //    }
    //    
    //    Serial.println(); // print a new line
    //    delay(20);

    if(buttonStateArray[0] == HIGH && 
      buttonStateArray[1] == HIGH && 
      buttonStateArray[2] == HIGH) { 
      for (count=0;count<6;count++) {
        digitalWrite(pinArray[count], HIGH);
      }

      delay(timer);       
    } 
    else if(buttonStateArray[0] == HIGH && 
      buttonStateArray[1] == HIGH &&
      buttonStateArray[2] == LOW) {
      // the first two are pressed then do something        
      // half the lights go on
      // all the lights go on
      for (count=0;count<3;count++) {
        digitalWrite(pinArray[count], HIGH);
      }
      delay(timer);

    } 
    else if(buttonStateArray[0] == HIGH && 
      buttonStateArray[1] == LOW &&
      buttonStateArray[2] == LOW) {
      // the first one is pressed then do something    

      // every other light goes on
      for (count=0;count<6;count+=2) {
        digitalWrite(pinArray[count], HIGH);
      }
      delay(timer);
    } 
    else {
      // do nothing 

    }


    // ALWAYS TURN THEM ALL OFF AFTER THE LOGIC IS DONE   
    for (count=0;count<6;count++) {
      digitalWrite(pinArray[count], LOW);
    }

    delay(10);

    //    timer = 250 / i;
    //    
    //    for (count=0;count<6;count++) {
    //     digitalWrite(pinArray[count], HIGH);
    //     delay(timer);
    //     digitalWrite(pinArray[count], LOW);
    //     delay(timer);
    //    }
    //    for (count=5;count>=0;count--) {
    //     digitalWrite(pinArray[count], HIGH);
    //     delay(timer);
    //     digitalWrite(pinArray[count], LOW);
    //     delay(timer);
    //    }
    //  
  }
}




