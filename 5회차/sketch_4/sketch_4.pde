void setup() {
  size(500, 500);
  strokeWeight(8);
  frameRate(10);
}

void draw() {
  background(128);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
