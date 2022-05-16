void setup(){
  size(800,800);
  background(255);
  noStroke();
  float radious = 300;
  float centerX = width/2;
  float centerY = height/2;
  for(float angle = 0; angle < TWO_PI; angle += 0.3) {
    float x = centerX + radious * cos(angle);
    float y = centerY + radious * sin(angle);
    fill(angle/TWO_PI * 255);
    ellipse(x,y,50,50);
  }
}
