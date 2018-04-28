void setup() {
  //fullScreen();  
  size(600, 600);
}

void draw() {
  
  // Scaling numbers using map():
  float redValue = map(mouseX, 0, 599, 0, 255);
  float rectangleOpacity = map(mouseX, 0, 599, 255, 0);
  float ellipseSize = map(mouseY, 0, 599, 30, 400);
  
  background(243, 23, redValue);
  noStroke();
  fill(255, 255, 0, rectangleOpacity);
  // Move the rectangle according to the frame number (moves on its own!) 
  rect(frameCount, 20, 200, 100);
  
  fill(redValue, 0, 0);
  ellipse(mouseX, mouseY, ellipseSize, ellipseSize);
  
  stroke(0);
  line(20, 20, 200, 100);
}
