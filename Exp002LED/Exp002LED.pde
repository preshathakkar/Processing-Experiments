import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

int ledPin = 9;                 // LED connected to digital pin 13

void setup()
{
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  arduino.pinMode(ledPin, Arduino.OUTPUT);      // sets the digital pin as output
  arduino.digitalWrite(ledPin, Arduino.HIGH);
}

void loop()
{
     // sets the LED on
  //delay(1000);                  // waits for a second
  //arduino.digitalWrite(ledPin, Arduino.LOW);    // sets the LED off
  //delay(1000);                  // waits for a second
}
