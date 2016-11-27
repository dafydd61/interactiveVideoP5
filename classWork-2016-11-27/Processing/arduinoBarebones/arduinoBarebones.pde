import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup() {
  arduino = new Arduino(this, Arduino.list()[1], 57600);
}

void draw() {
  float reading = arduino.analogRead(0);
  println(reading);
}