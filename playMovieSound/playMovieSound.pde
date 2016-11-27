/**
 * playMovieSound
 * Based on Scratch, by Andres Colubri, from the Processing video examples. 
 *
 * Scrub through a movie using ambient sound volume
 *
 * Check out MonitorInput in the Minim examples for more info on audio in.
 *
 * WARNING! This don't work so good.
 */

import processing.video.*;
// We need the minim library to get sound levels:
import ddf.minim.*;

Movie mov;

Minim minim;
AudioInput in;

float currentPos = 0,
      speed = .2,
      scale = .3,
      t, f;

void setup() {
  size(640, 360);
  background(0);

  mov = new Movie(this, "biker480.mov");

  // Pausing the video at the first frame. 
  mov.play();
  mov.jump(0);
  mov.pause();
  
  minim = new Minim(this);
  in = minim.getLineIn();
}

void draw() {

  if (mov.available()) {
    mov.read();
    f = 0;
    for(int i = 0; i < in.bufferSize() - 1; i++) {
      f += in.left.get(i);
    }
    f = constrain(f, 0, 1);

    t = mov.duration() * f;
    float distance = t - currentPos;
    currentPos = currentPos + distance * speed;
    mov.play();
    mov.jump(currentPos);
    mov.pause();
  }  

  image(mov, 0, 0);
  stroke(255, 0, 0);
  strokeWeight(4);
  for(int i = 0; i < in.bufferSize() - 1; i++)
  {
    line( i, 50 + in.left.get(i)*50, i+1, 50 + in.left.get(i+1)*50 );
  }
  fill(255, 0, 0);
  text(f, 20, 20);
}