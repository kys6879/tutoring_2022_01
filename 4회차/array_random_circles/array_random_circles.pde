int diam;
float centerX, centerY;

void setup() {
  size(800, 600);
  diam = 10;
  centerX = width / 2;
  centerY = height / 2;
  stroke(0);
  strokeWeight(5);
  fill(255, 30);
}

void draw() {
  //background(180);
  ellipse(centerX, centerY, diam, diam);
  diam += 10; // diam = diam + 10
  //if (diam > width){
  //  diam = 10;
  //}
  diam %= width; 
}
