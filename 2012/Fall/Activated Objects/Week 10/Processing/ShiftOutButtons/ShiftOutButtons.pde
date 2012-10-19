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
  noStroke();
  byte byteOut = (byte) map(mouseX, 0, width, 0, 256);
  myPort.write(byteOut);
  background(0);

  for (int i = 0; i < buttons.length; i++) {
    buttons[i].draw();
  }
}

