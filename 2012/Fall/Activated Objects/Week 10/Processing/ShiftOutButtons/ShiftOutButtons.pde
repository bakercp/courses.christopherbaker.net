import processing.serial.*;

Serial myPort;

Button[] buttons = new Button[8];

void setup() {
  size(800, 200);
  background(0);
  println(Serial.list());  


  myPort = new Serial(this, Serial.list()[4], 9600);

  int boxWidth = width / buttons.length;
  for (int i = 0; i < buttons.length; i++) {
    buttons[i] = new Button(boxWidth * i, 0, boxWidth, height);
  }
}

void draw() {
  background(0);

  byte byteOut = 0;

  //////////////////

  for (int i = 0; i < buttons.length; i++) {
    buttons[i].draw();
    byte buttonByte;
    if (buttons[i].value == true) {
      buttonByte = 1;
    } 
    else {
      buttonByte = 0;
    }
    buttonByte <<= i;
    byteOut |= buttonByte;

  }


  myPort.write(byteOut);
}


void mousePressed() {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].mousePressed();
  }
}

