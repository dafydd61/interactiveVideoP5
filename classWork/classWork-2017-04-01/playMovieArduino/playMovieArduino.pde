/**
 * playMovieLoop
 * 
 * Loop a video. Simple as can be
 */

import processing.video.*;
Movie mov;
boolean isPlaying = true;

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup() {
  size(640, 360);
  background(0);

  mov = new Movie(this, "biker480.mov");
  mov.loop();
  
  println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[1], 57600);
}

void draw() {

  int reading = arduino.analogRead(0);
  
  float r = map(reading, 0, 600, 0, 255);
  
  if (reading > 200) {
    mov.pause();
  } else {
    mov.loop();
  }
  
  if (mov.available()) {
    mov.read();
  }  

  tint(r, 255, 255);
  image(mov, 0, 0, width, height);
}

void mouseReleased() {
  if (isPlaying) {
    mov.pause();
  } else {
    mov.loop();
  }
  isPlaying = !isPlaying;
}