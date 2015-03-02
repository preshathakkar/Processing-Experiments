import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

int motorPin = 9;

void setup()
{
  println(Arduino.list());
  arduino = new Arduino(this,"/dev/ttyACM0",57600);
  arduino.pinMode(motorPin, Arduino.OUTPUT);
  noLoop();
}

void draw()
{
 arduino.digitalWrite(motorPin, Arduino.HIGH);
  
  
}


