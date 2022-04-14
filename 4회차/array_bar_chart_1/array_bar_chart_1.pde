/* 1차원 배열입니다. 값은 총 20개 까지 들어갈 수 있습니다. */
/* 0번방 부터 19번방 까지. */
float [] chart = new float[20];

void setup() {
  size(800, 800);
  /* 1초에 5장씩 그립니다. */
  frameRate(5);
}

void draw() {
  background(255);
  
  /* 벽돌깨기에서 했던것처럼 1차원배열에 그냥 랜덤인 값을 넣습니다. */
  /* 0부터 799 까지의 랜덤 값이 들어갑니다.*/
  
  /* chart.length 는 20입니다. 선언할때 20개로 선언했기 때문입니다. */
  for(int i = 0; i < chart.length; i++){
    
    /* 0번부터 19번까지 랜덤 값을 넣습니다. */
    chart[i] = random(width);
  }
  
  /* 20번 반복합니다. */
  for(int i = 0; i < chart.length; i++){
    /* 색을 랜덤으로 채우고 */
    fill(random(255), random(255), random(255));
    
    /* 사각형의 너비를 아까 채웠던 랜덤값으로 넣어주기때문에 계속 바뀝니다. */
    rect(0, i*height/chart.length, chart[i], height/chart.length);
  }
}
