PImage pic1;
PImage pic2;

void setup() {
  size(600, 600);
  pic1 = loadImage("p-croswell.jpg");
  pic2 = loadImage("p-dino.jpg");
}

void draw() {
  tint(255);
  image(pic1, 0, 0, 300, 300);
  tint(255, 0, 0);
  image(pic2, 300, 0, 300, 300);
  tint(0, 0, 255);
  image(pic2, 0, 300, 300, 300);
  tint(255, 255, 0);
  image(pic1, 300, 300, 300, 300);
  
  float rectangleOpacity = map(mouseX, 0, 599, 255, 0);
  tint(255, 0, 0, rectangleOpacity);
  image(pic1, 0, 0, 600, 600);
}
