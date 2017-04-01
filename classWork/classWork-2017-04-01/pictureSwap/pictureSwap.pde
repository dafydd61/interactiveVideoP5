/*

 Picture Swap
 Switch between pictures with the mouse
 
 Add pictures to the sketch folder using Sketch > Add File...
 
 */

PImage pic1;
PImage pic2;

void setup() {
  size(600, 600);
  noStroke();
  background(245, 180, 255);

  pic1 = loadImage("p-croswell.jpg");
  pic2 = loadImage("p-dino.jpg");
}

void draw() {
  if (mousePressed) {
    image(pic1, 0, 0, 600, 600);
  } else {
    image(pic2, 0, 0, 600, 600);
  }
}