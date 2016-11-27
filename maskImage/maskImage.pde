/**
 * Image masking 
 * built on Background Subtraction by Golan Levin 
 *
 * Use background subtraction to mask a photo with camera capture
 */


import processing.video.*;

int numPixels;
int[] backgroundPixels;
PImage mask, currentFrame, pic;
Capture video;

void setup() {
  size(640, 480);

  pic = loadImage("atlas_cern_640.jpg");
  mask = createImage(width, height, GRAY);

  video = new Capture(this, width, height);
  video.start();  
  
  numPixels = width * height;
  // Create array to store the background image
  backgroundPixels = new int[numPixels];
  // Make the pixels[] array available for direct manipulation
  loadPixels();
}

void draw() {
  if (video.available()) {
    video.read(); // Read a new video frame
    mask = video.get(0, 0, width, height);
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
    mask.updatePixels();    
  }
  
  mask.filter(BLUR, 1);
 
  pic.mask(mask);
  pushMatrix();
  translate(width, 0);
  scale(-1, 1);
  image(video, 0, 0, width, height);
  image(pic, 0, 0, width, height);
  popMatrix();
}

void keyPressed() {
  video.filter(THRESHOLD);
  video.loadPixels();
  arraycopy(video.pixels, backgroundPixels);
}