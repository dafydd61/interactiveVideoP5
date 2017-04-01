import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

float mousePosition;

PImage picture1;
PImage picture2;

boolean showDino = true;

void setup() {
  size(612, 612);
  
  arduino = new Arduino(this, Arduino.list()[1], 57600);
  
  picture1 = loadImage("p-dino.jpg");
  picture1.filter(THRESHOLD);
  picture1.filter(BLUR, 5);
  picture2 = loadImage("p-croswell.jpg");
}

void draw() {
  tint(255, 255);
  image(picture2, 0, 0);
  
  float reading = arduino.analogRead(0);
  reading = map(reading, 40, 660, 0, 255);
  
  println(reading);
 
  tint(255, reading);
  
  if (showDino == true) {
    image(picture1, 0, 0);
  }
}

void mouseReleased() {
  if (showDino == true) {
    showDino = false;
  } else {
    showDino = true;
  }
}