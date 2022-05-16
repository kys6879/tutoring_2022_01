void setup() {
  size(800,800);
  house1();
  
  for(int i=0; i<3; i++) {
    house3(i*100,300);
  }
  
}

void house1() {
  fill(0);
  triangle(50,0,0,50,100,50);
  fill(128);
  rect(0,50,100,100);
}

void house2(float x, float y) {
  fill(0);
  triangle(50+x,y,x,50+y,100+x,50+y);
  fill(128);
  rect(x,50+y,100,100);
}

void house3(float x, float y) {
  pushMatrix();
  translate(x,y);
  house1();
  popMatrix();
}
