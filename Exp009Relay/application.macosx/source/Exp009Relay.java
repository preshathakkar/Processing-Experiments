import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.serial.*; 
import cc.arduino.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Exp009Relay extends PApplet {






Arduino arduino;
int ledPin =9;
public void setup()
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

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Exp009Relay" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
