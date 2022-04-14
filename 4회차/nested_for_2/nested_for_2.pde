float max_distance;

void setup() {
  size(600, 600);
  
  /* 원 테두리 없애기 */
  noStroke();
  
  /* 0,0 ~ width,height 사이의 거리를 구하고 2로 나눕니다. */
  /* 이것은 절대적인 거리이기 때문에 2를 나눠도 되고 3으로 나눠도 됩니다. */
  /* 하지만 이 값이 커지는 만큼 상대적으로 원이 작을것이고 */
  /* 작아지는 만큼 원이 커질 것 입니다. */
  max_distance = dist(0, 0, width, height) /2;
}

void draw() {
 
  background(0);
  
  int inc = 20;

  /* 첫번째 for문 31번 반복합니다.  */
  for(int i = 0; i <= width; i += inc) {
    /* 첫번째 for문이 1번 반복할때마다 2번째 for문은 31번씩 반복합니다.  */
    for(int j = 0; j <= height; j += inc) {
      
      /* 마우스포인터로부터 i,j 까지의 거리를 계산합니다. */
      /* 원이 그려질때 마우스 포인터의 위치에 따라 원이 다르게 변한다는 것 입니다.*/
      float d = dist(mouseX, mouseY, i, j);
      
      /* 위에서 구했던 마우스 포인터에 대한 상대적인 거리로 원의 지름을 결정합니다. */
      float radius = d * inc;
      ellipse(i, j, radius, radius);
    }
  }
}
