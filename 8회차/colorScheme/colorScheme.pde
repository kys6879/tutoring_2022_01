float segmentNo;
float radius;
void setup() {
  size(600,600);
  segmentNo = 12;
  
  radius = width /2;
}
void draw() {
  colorMode(HSB,TWO_PI,width,height);
  background(0,0,height);
  
  float angleStep = TWO_PI / segmentNo;
  println(angleStep);
  beginShape(TRIANGLE_FAN);
  vertex(0,0);
  translate(width / 2,height / 2);
  for(float angle = 0; angle<= TWO_PI; angle += angleStep) {
    float vx = cos(angle) * radius;
    float vy = sin(angle) * radius;
    vertex(vx,vy);
    fill(angle,mouseX,mouseY);
  }
  endShape();
}
