/**
 * Video masking 
 * built on Background Subtraction by Golan Levin 
 *
 * Use background subtraction to mask a video with camera capture
 */


import processing.video.*;

int numPixels;
int[] backgroundPixels;
PImage mask, currentFrame;
Capture video;
Movie movie;

void setup() {
  size(640, 360);
  
  movie = new Movie(this, "biker480.mov");
  movie.loop();

  mask = createImage(width, height, GRAY);
  currentFrame = createImage(width, height, GRAY);

  video = new Capture(this, width, 480);
  
  // Start capturing the images from the camera
  video.start();  
  
  numPixels = width * height;
  // Create array to store the background image
  backgroundPixels = new int[numPixels];
  // Make the pixels[] array available for direct manipulation
  loadPixels();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  image(movie, 0, 0, width, height);
  if (video.available()) {
    video.read(); // Read a new video frame
    mask = video.get(0, 0, width, 360);
    mask.filter(THRESHOLD);
    mask.loadPixels(); // Make the pixels of video available
    // Difference between the current frame and the stored background
    for (int i = 0; i < numPixels; i++) { // For each pixel in the video frame...
      // Fetch the current color in that location, and also the color
      // of the background in that spot
      color currColor = mask.pixels[i];
      color bkgdColor = backgroundPixels[i];
      // Compare the two colors
      if (currColor != bkgdColor) {
        mask.pixels[i] = color(255, 255, 255);  
      } else {
        mask.pixels[i] = color(0, 0, 0);
      }
    }
    mask.updatePixels(); // Notify that the pixels[] array has changed    
  }
  
  mask.filter(BLUR, 2);

  background(0);
 
  movie.mask(mask);
  pushMatrix();
  translate(width, 0);
  scale(-1, 1);
  image(movie, 0, 0, width, height);
  popMatrix();
}

void keyPressed() {
  currentFrame = video.get(0, 0, width, 360);
  currentFrame.filter(THRESHOLD);
  currentFrame.loadPixels();
  arrayCopy(currentFrame.pixels, backgroundPixels);
}