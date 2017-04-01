float mousePosition;

PImage picture1;
PImage picture2;

boolean showDino = true;

void setup() {
  size(612, 612);
  
  picture1 = loadImage("p-dino.jpg");
  picture1.filter(THRESHOLD);
  picture1.filter(BLUR, 5);
  picture2 = loadImage("p-croswell.jpg");
}

void draw() {
  picture2.mask(picture1);
  image(picture2, 0, 0);
}

void mouseReleased() {
  if (showDino == true) {
    showDino = false;
  } else {
    showDino = true;
  }
}