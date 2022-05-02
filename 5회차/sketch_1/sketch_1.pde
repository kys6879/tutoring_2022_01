void setup() {
  size(600,600);
}

void draw() {
  background(128);
  
  line(mouseX,0,mouseX,600);
  
  line(0,mouseY,600,mouseY);
  
  ellipse(mouseX,mouseY,30,30);
  
}
