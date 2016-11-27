// Make a bouncing ball
// get a silhouette using background subtraction
// check for collisions between the two

import processing.video.*;

int numPixels;
int[] backgroundPixels;
PImage mask, currentFrame, pic;
Capture video;

float ellipseX, ellipseY;
float speedX = 4;
float speedY = 6;

void setup() {

  size(640, 480);
  
  noStroke();

  mask = createImage(width, height, GRAY);

  video = new Capture(this, width, height);
  video.start();  
  
  numPixels = width * height;
  // Create array to store the background image
  backgroundPixels = new int[numPixels];
  
}

void draw() {
  
  if (video.available()) {
    video.read(); // Read a new video frame
    mask = video.get(0, 0, width, height);
    mask.filter(THRESHOLD, .3);
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

  
  ellipseX = ellipseX + speedX;  
  ellipseY = ellipseY + speedY;  
  
  if (ellipseX > width || ellipseX < 0) {
    speedX = speedX * -1;
  }

  if (ellipseY > height || ellipseY < 0) {
    speedY = speedY * -1;
  }
  
  color pixelColor = mask.get(int(ellipseX), int(ellipseY));
  if (red(pixelColor) == 255) {
    speedX = speedX * -1;
    speedY = speedY * -1;
  }
      
  background(255);

  image(mask, 0, 0, width, height);

  fill(255, 255, 0);
  ellipse(ellipseX, ellipseY, 100, 100);
}

void keyPressed() {
  video.filter(THRESHOLD, .3);
  video.loadPixels();
  arrayCopy(video.pixels, backgroundPixels);
}