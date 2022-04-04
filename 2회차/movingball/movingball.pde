int posX;
int posY;
int diam;
int speed;
int xDir;
void setup() {
  size(800,800);
  posX = 100;
  posY = 400;
  diam = 50;
  speed = 5;
}
void draw() {
  background(200);
  
  ellipse(posX,posY,diam,diam);
  posX = posX + speed;
  
  if(posX + diam/2 > 800) {
    speed = speed * -1;
  }
  
  if(posX - diam/2 < 0) {
    speed = speed * -1;
  }
}
