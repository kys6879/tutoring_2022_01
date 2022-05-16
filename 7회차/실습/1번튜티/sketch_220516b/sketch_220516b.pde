void setup(){
 size(800, 800);
}

void draw(){
  drawRect();
}
void drawRect(){
  //redRect
  fill(#FF0000);
  rect(0, 100, 50, 50);
  rect(100, 100, 50, 50);
  rect(200, 100, 50, 50);
  rect(300, 100, 50, 50);
  //YellowRect
  fill(#FFFF00);
  rect(100, 300, 50, 50);
  rect(200, 300, 50, 50);
  rect(300, 300, 50, 50);
  rect(400, 300, 50, 50);
  //GreenRect
  fill(#00FF00);
  rect(200, 500, 50, 50);
  rect(300, 500, 50, 50);
  rect(400, 500, 50, 50);
  rect(500, 500, 50, 50);
}
