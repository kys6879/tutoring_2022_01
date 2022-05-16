void setup() {
  size(800,800);
  
  for(int i=0; i<4; i++) {
    fill(#FF0000);
    drawShape(i*100,100);
  }
  
  for(int i=0; i<4; i++) {
    fill(#FFFF00);
    drawShape(i*100+100,300);
  }
  
  for(int i=0; i<4; i++) {
    fill(#00FF00);
    drawShape(i*100+200,500);
  }
  
}

void drawShape(float x, float y) {
  pushMatrix();
  translate(x,y);
  drawRect();
  popMatrix();
}

void drawRect() {
  rect(0,0,50,50);
}
