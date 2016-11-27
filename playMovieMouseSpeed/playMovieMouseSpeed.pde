/**
 * playMovieMouseSpeed
 * 
 * Loop a video, with mouse-controlled varispeed!
 */

import processing.video.*;

Movie mov;

float pos;

void setup() {
  size(640, 360);
  background(0);

  mov = new Movie(this, "biker480.mov");

  mov.play();
  mov.jump(0);
  mov.pause();
}

void draw() {

  if (mov.available()) {
    mov.read();
    
    float playSpeed = map(mouseX, 0, width, -.2, .2);
    
    pos += playSpeed;
    if (pos > mov.duration()) pos = 0;
    if (pos < 0) pos = mov.duration();
    
    mov.play();
    mov.jump(pos);
    mov.pause();
  }  
  image(mov, 0, 0);
}