void setup(){
  size(600, 600);
  stroke(128);
}

void draw(){
  int lines = 0;
  
  background(0);
  
  /* 최대 10개의 선을 만듭니다. */
  while(lines < 10){
    /* 시작지점이 mouseX와 mouseY 니깐, 마우스포인터로부터 선을 그립니다. */
    line(mouseX, mouseY, random(width), random(height));
    lines++;
  }
}
