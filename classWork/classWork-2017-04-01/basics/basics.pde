/*

Basics
This is the sketch where we learned to draw basic shapes and then make them move!

*/

void setup() {
  size(600, 600);
  noStroke();
  background(245, 180, 255);
}

void draw() {
  fill(255, 0, 0); // Red fill
  rect(30, 40, 200, 100);
  
  fill(mouseX, mouseY, 60, 255);
  ellipse(frameCount % 600, 200, 30, 30);
}