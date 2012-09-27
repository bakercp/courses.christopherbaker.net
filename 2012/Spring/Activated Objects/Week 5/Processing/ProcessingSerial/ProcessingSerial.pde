import processing.serial.*; // import serial library

Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port

void setup() 
{
  size(200, 200);
  // println(Serial.list()); // list the serial devices
  myPort = new Serial(this, "/dev/tty.usbmodemfd121", 9600);
}

void draw() {
   while ( myPort.available() > 0) {  // If data is available,
    val = myPort.read();         // read it and store it in val
    // println(val);
   }
  
  // send the mouse state to arduino via the serial port
  if(mousePressed) {
    myPort.write(1);
  } else {
    myPort.write(0);
  }
  
  // prepare for drawing
  background(0);
  ellipseMode(CENTER);
  
  // change the fill based on the arduino button value
  if(val == 1) {
     fill(255,255,0);
  } else {
     fill(255,0,0);
  }
  
  stroke(255,255,100);
  strokeWeight(4);
  ellipse(width/2,height/2,100,100);
  
}


