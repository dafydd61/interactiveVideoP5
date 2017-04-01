int frames = 67;
PImage[] smile;

// We need the minim library to get sound levels:
import ddf.minim.*;

Minim minim;
AudioInput in;

// currentFrame - which frame we're displaying right now
// speed - how quickly we move from one point to another
// level - sound level from 0 to 1
// targetFrame - level translated to frame number

float currentFrame = 0,
      speed = .1,
      level, targetFrame;

void setup() {
  size(640, 360);
  smile = new PImage[frames];
  for (int i = 0; i < frames; i++) {
    String padded = pad(i); 
    String filename = "../media/smile/smile-dh" + padded + ".jpg";
    smile[i] = loadImage(filename);
  }
  minim = new Minim(this);
  in = minim.getLineIn();
}

void draw() {
  level = 0;
  for(int i = 0; i < in.bufferSize() - 1; i++) {
    level += in.left.get(i);
  }
  level = constrain(level, 0, 1);
  
  targetFrame = frames * level;
  float distance = targetFrame - currentFrame;
  currentFrame = currentFrame + distance * speed;

  image(smile[int(currentFrame)], 0, 0);
}

String pad(int i) {
  String padded;
  if (i < 10) {
    return "0" + i;
  } else {
    return str(i);
  }
}