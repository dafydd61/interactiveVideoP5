import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

color off = color(4, 79, 111);
color on = color(84, 145, 158);

void setup() {
  size(470, 280);

  println(Arduino.list());

  arduino = new Arduino(this, Arduino.list()[1], 57600);
 
}

void draw() {
  background(off);
  stroke(on);

  // Draw a circle whose size corresponds to the value of an analog input.
  noFill();
  ellipse(50, 50, arduino.analogRead(1) / 16, arduino.analogRead(0) / 16);
}
