void setup(){
 size(800, 800);
 
 for(int i = 0; i < 4; i++) {
    drawRect2(i*100, 100); 
  }
  
  for(int i = 1; i < 5; i++) {
    drawRect3(i*100, 300); 
  }
  
  for(int i = 2; i < 6; i++) {
    drawRect4(i*100, 500); 
  }
}


void drawRect() {
 rect(0, 0, 50, 50); 
}

void drawRect2(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(#FF0000);
  drawRect(); 
  popMatrix(); 
}

void drawRect3(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(#FFFF00);
  drawRect(); 
  popMatrix(); 
}

void drawRect4(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(#00FF00);
  drawRect(); 
  popMatrix(); 
}
