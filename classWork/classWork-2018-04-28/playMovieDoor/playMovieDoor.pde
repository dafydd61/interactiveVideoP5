/**
 * playMovieDoor
 * 
 * Loop a video, triggering start and stop with a proximity sensor in a door
 */

// Arduino stuff
import processing.serial.*;
import cc.arduino.*;

// Make an arduino object (variable):
Arduino arduino;

// Video stuff
import processing.video.*;

// make a Movie object
Movie mov;

// Boolean = true/false
boolean playing = false;  // remember whether or not the video is playing
boolean listening = true; // remmeber whether or not we should be paying attention to the sensor

int startFrame; // remember when we started playing the video last

void setup() {
  size(640, 360);
  background(0);

  arduino = new Arduino(this, Arduino.list()[1], 57600);

  mov = new Movie(this, "biker480.mov");

  // Get the video to the first frame 
  mov.play();
  mov.jump(0);
  mov.pause();
}

void draw() {

  // check the sensor
  int reading = arduino.analogRead(0);
  
  // if somebody is passing through the door
  if (reading > 150) {
    // if this is new
    if (listening == true) {
      // Start or stop playback, remember whether we're playing or not, stop listening for 100 frames
      if (playing == true) {
        println("pause");
        mov.pause();
        playing = false;
        startFrame = frameCount;
        listening = false;
      } else {
        println("play");
        mov.loop();
        playing = true;
        startFrame = frameCount;
        listening = false;
      }
    }
  }
  
  // Have 100 passed since we started or stopped playback? If so, start listening
  if (frameCount - startFrame > 100) {
    listening = true;
  }
  
  if (mov.available()) {
    mov.read();
  }  

  image(mov, 0, 0);
  
  // Show the reading:
  fill(0);
  text(reading, 20, 20);

}

void mouseReleased() {
  if (playing == true) {
    println("pause");
    mov.pause();
    playing = false;
  } else {
    println("play");
    mov.loop();
    playing = true;
  }
}