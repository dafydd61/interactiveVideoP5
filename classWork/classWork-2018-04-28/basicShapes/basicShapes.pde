void setup() {
  size(800, 450);
  //fullScreen();
  background(243, 23, 255);
  
}

void draw() {
  // No outlines!
  noStroke();
  // Yellow
  fill(255, 255, 0);
  rect(20, 20, 200, 100);
  
  // semitransparent red (4th parameter is opacity)
  fill(255, 0, 0, 200);
  // mouseX, mouseY give you the position of the mouse!
  ellipse(mouseX, mouseY, 50, 50);
  
  // Lines need a stroke, because that's what they are!
  stroke(0);
  line(20, 20, 200, 100);
}
