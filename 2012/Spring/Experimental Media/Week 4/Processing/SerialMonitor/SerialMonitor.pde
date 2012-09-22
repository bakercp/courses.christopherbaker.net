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
   if ( myPort.available() > 0) {  // If data is available,
    val = myPort.read();         // read it and store it in val
    println(val);
  }
}


