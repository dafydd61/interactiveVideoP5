import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

PImage pic1;
PImage pic2;

color off = color(4, 79, 111);
color on = color(84, 145, 158);

void setup() {
  size(600, 600);
  pic1 = loadImage("p-croswell.jpg");
  pic2 = loadImage("p-dino.jpg");

  println(Arduino.list());

  arduino = new Arduino(this, Arduino.list()[1], 57600);
 
}

void draw() {
  background(off);
  stroke(on);

  // Draw a circle whose size corresponds to the value of an analog input.
  noFill();
  int reading = arduino.analogRead(1);
  float mappedReading = map(reading, 80, 590, 0, 255);
  float constrainedReading = constrain(mappedReading, 0, 255);
  println(reading);
  
  tint(255);
  image(pic1, 0, 0, 300, 300);
  tint(255, 0, 0);
  image(pic2, 300, 0, 300, 300);
  tint(0, 0, 255);
  image(pic2, 0, 300, 300, 300);
  tint(255, 255, 0);
  image(pic1, 300, 300, 300, 300);
  
  tint(255, 0, 0, constrainedReading);
  image(pic1, 0, 0, 600, 600);

  
}
