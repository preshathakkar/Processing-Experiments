
import processing.serial.*;
import cc.arduino.*;


Arduino arduino;
int Fan = 11;
void setup()
{
//println(Arduino.list());
arduino = new Arduino(this, Arduino.list()[0], 57600);
arduino.pinMode(Fan, Arduino.OUTPUT);
}

void draw()
{
arduino.digitalWrite(Fan, Arduino.HIGH);
//delay(1000);
//arduino.digitalWrite(ledPin, Arduino.LOW);
//delay(1000);
}

