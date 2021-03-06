/**
 * playMovieMouse
 * This is really Scratch, by Andres Colubri, from the Processing video examples. 
 * Like, really. Just Saved As... with a different video.
 *
 * Scrub through a movie using the mouse
 */

import processing.video.*;

Movie mov;

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
    mov.play();
    mov.jump(t);
    mov.pause();
  }  

  image(mov, 0, 0);
}