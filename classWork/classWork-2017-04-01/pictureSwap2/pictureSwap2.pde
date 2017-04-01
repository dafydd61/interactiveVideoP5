/*

 Picture Swap 2
 Switch between pictures by clicking the mouse
 
 Add pictures to the sketch folder using Sketch > Add File...
 
 */

PImage pic1;
PImage pic2;
boolean showDino = false;

void setup() {
  size(600, 600);
  noStroke();
  background(245, 180, 255);

  pic1 = loadImage("p-croswell.jpg");
  pic2 = loadImage("p-dino.jpg");
}

void draw() {
  if (showDino == true) {
    image(pic2, 0, 0, 600, 600);
  } else {
    image(pic1, 0, 0, 600, 600);
  }
}

void mouseReleased() {
  // if showDino is true, make it false
  // if it's false, make it true.
  showDino = !showDino;
}