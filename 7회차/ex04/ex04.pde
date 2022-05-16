void setup(){
  size(800,800);
  background(255);
  noStroke();

  circles3();
}

void circles1() {
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

void circles2() {
  translate(width/2, height/2);
  for(int i=0; i<20; i++) {
    rotate(radians(20));
    fill(0);
    ellipse(300,0,50,50);
  } 
}

void circles3() {
  pushMatrix();
  translate(width/2, height/2);
  for(float angle=0; angle<TWO_PI; angle += 0.3) {
    pushMatrix();
    rotate(angle);
    fill(angle/TWO_PI * 255);
    ellipse(300,0,50,50);
    popMatrix();
  } 
  popMatrix();
}
