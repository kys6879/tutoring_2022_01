int length;
boolean [][] map;

void setup(){
  size(600, 600);
  background(0);
  length = 30;
  
  /* 30x30 값을 넣을 수 있는 2차원 배열입니다. */
  map = new boolean[length][length];
  
  /* 벽돌깨기처럼 배열에 값만 넣습니다. */
  /* 지금은 false 만 넣는데, 클릭했을때 true로 바뀌게 할 것입니다.*/
  for(int x = 0; x < length; x = x+1){
    for(int y = 0; y < length; y = y+1){
      map[y][x] = false;
    }
  }
}

void mousePressed(){
  
  /* 마우스포인터의 좌표 / 길이(30) 하면 해당 위치의 절대적인 사각형의 좌표가 나옵니다.*/
  /* 왜냐하면 사각형은 length의 배수만큼 그렸기 때문입니다.*/
  if (map[mouseY/length][mouseX/length] == true){
    map[mouseY/length][mouseX/length] = false;
  }
  else{
    map[mouseY/length][mouseX/length] = true;
  }
}

void draw(){
  // 모든 2차원 배열을 반복하면서
  for(int x = 0; x < length; x = x+1){
    for(int y = 0; y < length; y = y+1){
      
      /* 값이 true인 것만 색을 칠합니다. */
      if (map[y][x] == true){
        fill(0);
      }
      else{
        fill(255);
      }
      /* x 랑 y를 0부터 곱하면서 차례대로 사각형을 그립니다. */
      /* 바둑판 형식으로 그려지게 됩니다. */
      rect(length*x, length*y, length, length);
    }
  }
}
