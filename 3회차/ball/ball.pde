int posX;
int posY;
int diam;
int xDir;
int yDir;

int padX, padY, padWidth;
color padColor;

// bricks
int bRowNo = 4, bColNo=10;
int bWidth, bHeight;
int [][] bricks = new int[bRowNo][bColNo]; // 2 dimensional array
void setup() {
  size(800,800);
  posX = 100;
  posY = 400;
  diam = 50;
  xDir = 5;
  yDir = 5;
  
  padX = width / 2;
  padY = height - 40;
  padWidth = 400;
  padColor = #00FF00;
  
  bWidth = width/bColNo;
  bHeight = 30;
  
  int i, j;
  for(i=0; i<bRowNo; i++){
    for(j=0; j<bColNo; j++){
        bricks[i][j] = 1;
    }
  }
    
}
void draw() {
  background(200);

  noStroke();
  fill(#000000);
  ellipse(posX,posY,diam,diam);
  posX = posX + xDir;
  posY = posY + yDir;
  
  fill(padColor);
  
  padX = mouseX - padWidth/2;
  rect(padX,padY,padWidth,40);
  
  if(posX + diam/2 > 800) {
    xDir = xDir * -1;
  }
  
  if(posX - diam/2 < 0) {
    xDir = xDir * -1;
  }
  
  if(posY + diam/2 > 800) {
    yDir = yDir * -1;
  }
  
  if(posY - diam/2 < 0) {
    yDir = yDir * -1;
  }
  
  if(
    posX > padX && 
    posX < padX + padWidth && 
    posY > padY-diam/2) {
    yDir = yDir * -1;
  }
  
  int i,j;

  stroke(153);
  for(i=0; i<bRowNo; i++){
    for(j=0; j<bColNo; j++){
      if(bricks[i][j] == 1) {
        rect(j*bWidth, i*bHeight, bWidth, bHeight);
      }
    }
  }
             // 120
  if(posY < bRowNo * bHeight) {
 
                       // [3] [6]
      if ( bricks[posY/bHeight][posX/bWidth] > 0) {
        
     
        
        yDir *= -1;
        
        bricks[posY/bHeight][posX/bWidth]--;
 
    }
    else if ( posY < 0) yDir *= -1;
  }
  
  
}
