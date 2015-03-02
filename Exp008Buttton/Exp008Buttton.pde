import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

boolean button = false;

int ledPin = 9;

int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(200,200);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  arduino.pinMode(ledPin, Arduino.OUTPUT); 
}

void draw() {
  if (button) {
    background(255);
    stroke(0);
    arduino.digitalWrite(ledPin, Arduino.HIGH);
  } else {
    background(0);
    stroke(255);
    arduino.digitalWrite(ledPin, Arduino.LOW);
  }
  
  fill(175);
  rect(x,y,w,h);
}

// When the mouse is pressed, the state of the button is toggled.   
// Try moving this code to draw() like in the rollover example.  What goes wrong?
void mousePressed() {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    button = !button;
  }  
}






