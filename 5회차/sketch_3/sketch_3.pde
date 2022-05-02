void setup(){
  size(600,600);
}
void draw() {
  background(115);
  
  float distance = dist(width/2,height/2,mouseX,mouseY);
  println(distance);
  if (distance < 100) {
    fill(0);
  } else {
    fill(255);
  }
  
  ellipse(width/2,height/2,200,200);
}
