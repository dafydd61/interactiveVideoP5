/*

Pictures 1
Playing with photos

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
  tint(255);
  image(pic1, 0, 0, 600, 600);
  
  float opacity = map(mouseX, 0, 599, 255, 0);
  float red = map(mouseY, 0, 599, 255, 0);
  tint(red, 255, 255, opacity);
  image(pic2, 0, 0, 600, 600);
}