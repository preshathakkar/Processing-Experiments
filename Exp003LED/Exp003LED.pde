
import processing.serial.*;
import cc.arduino.*;


Arduino arduino;
int ledRed = 2;
int ledYellow = 1;
int ledGreen = 8;

void setup()
{
//println(Arduino.list());
arduino = new Arduino(this, Arduino.list()[0], 57600);
arduino.pinMode(ledRed, Arduino.OUTPUT);
arduino.pinMode(ledYellow, Arduino.OUTPUT);
arduino.pinMode(ledGreen, Arduino.OUTPUT);
}

void draw()
{
arduino.digitalWrite(ledRed, Arduino.HIGH);
delay(1000);
arduino.digitalWrite(ledRed, Arduino.LOW);
arduino.digitalWrite(ledYellow, Arduino.HIGH);
delay(1000);
arduino.digitalWrite(ledYellow, Arduino.LOW);
arduino.digitalWrite(ledGreen, Arduino.HIGH);
delay(1000);
arduino.digitalWrite(ledGreen, Arduino.LOW);
}

