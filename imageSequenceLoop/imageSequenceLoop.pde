int frames = 67;
PImage[] smile;    // An array to hold the images

void setup() {
  size(640, 360);
  
  // Load up the images:
  smile = new PImage[frames];
  for (int i = 0; i < frames; i++) {
    String padded = pad(i); 
    String filename = "../media/smile/smile-dh" + padded + ".jpg";
    smile[i] = loadImage(filename);
  }
}

void draw() {
  int frame = frameCount % frames;
  image(smile[frame], 0, 0);
}

// A helper function to add leading 0s to numbers < 10  
String pad(int i) {
  String padded;
  if (i < 10) {
    return "0" + i;
  } else {
    return str(i);
  }
}