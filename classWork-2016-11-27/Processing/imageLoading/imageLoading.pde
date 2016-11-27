float mousePosition;

PImage picture1;

void setup() {
  size(612, 612);
  
  picture1 = loadImage("p-dino.jpg");
}

void draw() {
  image(picture1, 0, 0);
}