





  















































int posX = 0;
int posY = 0;
int speed = 2;
void setup() {
 size(500,500);
 
 posX = width/2;
 posY = height/2;
}

void draw() {
  background(120);
  ellipse(posX,posY,30,30);
  
  if(keyPressed) {
    if (keyCode == LEFT) {
      posX -= speed;
      ellipse(posX,posY,30,30);
    }
    if (keyCode == RIGHT) {
      posX += speed;
      ellipse(posX,posY,30,30);
    }
    if (keyCode == UP) {
      posY -= speed;
      ellipse(posX,posY,30,30);
    }
    if (keyCode == DOWN) {
      posY += speed;
      ellipse(posX,posY,30,30);
    }
  }
}

void keyReleased() {
  if (keyCode == LEFT || 
      keyCode == RIGHT ||
      keyCode == UP ||
      keyCode == DOWN
       ) {
       println("STOP!");
       }
}
