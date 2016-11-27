/**
 * playMovieMouseEase
 * Based on Scratch, by Andres Colubri, from the Processing video examples. 
 * 
 * Added easing to smoothly transitioin between frames
 *
 * Scrub through a movie using the mouse
 */

import processing.video.*;

Movie mov;

float currentPos = 0, speed = .5;

void setup() {
  size(640, 360);
  background(0);

  mov = new Movie(this, "biker480.mov");

  // Pausing the video at the first frame. 
  mov.play();
  mov.jump(0);
  mov.pause();
}

void draw() {

  if (mov.available()) {
    mov.read();
    // A new time position is calculated using the current mouse location:
    float f = map(mouseX, 0, width, 0, 1);
    float t = mov.duration() * f;
    float distance = t - currentPos;
    currentPos = currentPos + distance * speed;
    mov.play();
    mov.jump(currentPos);
    mov.pause();
  }  

  image(mov, 0, 0);
}