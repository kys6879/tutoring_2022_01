void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  drawCircles(10);
}

void drawCircles(int n) {
  ellipse(width/2, height/2,  n*50, n*50);
  if(n > 0) {
    drawCircles(n-1);
  }
}
