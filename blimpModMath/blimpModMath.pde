void setup() {
  size(300, 600);
    
  noStroke();
}

void draw() {
  
  background(0, 168, 255);

  float mousePosition = mouseX;
  float ellipseFill = map(mousePosition, 0, width, 0, 255);
  fill(ellipseFill);
  ellipse(width, 0, 200, 200);

  fill(237, 160, 247);  
  ellipse(frameCount % width, 100, 200, 150);
  rect(frameCount % width - 25, 175, 50, 30);

}