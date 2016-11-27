void setup() {
  size(800, 600);
    
  noStroke();
}

void draw() {
  
  background(0, 168, 255);

  fill(237, 160, 247);
  rect(50, 100, 200, 150);

  float mousePosition = mouseX;
  float ellipseFill = map(mousePosition, 0, 799, 0, 255);
  fill(ellipseFill);
  ellipse(400, 300, 200, 200);
}