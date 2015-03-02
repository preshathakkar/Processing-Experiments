
import processing.serial.*;
import cc.arduino.*;


Arduino arduino;
int ledPin =9;
void setup()
{
//println(Arduino.list());
arduino = new Arduino(this,Arduino.list()[0],57600);
arduino.pinMode(ledPin, Arduino.OUTPUT);
arduino.digitalWrite(ledPin, Arduino.HIGH);
delay(12000);
arduino.digitalWrite(ledPin, Arduino.LOW);

}

//void draw()
//{
//delay(1000);
//}

