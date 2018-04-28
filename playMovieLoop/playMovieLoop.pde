/**
 * playMovieLoop
 * 
 * Loop a video. Simple as can be
 */

import processing.video.*;

Movie mov;

void setup() {
  size(640, 360);
  background(0);

  mov = new Movie(this, "biker480.mov");

  mov.loop();
}

void draw() {

  if (mov.available()) {
    mov.read();
  }  

  image(mov, 0, 0, 640, 360);
}
