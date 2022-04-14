int diam;
float centerX, centerY;

void setup() {
  size(800, 600);
  diam = 10;
  
  /* 너비와 높이를 2로 나누었으니깐 정중앙입니다. */
  centerX = width / 2;
  centerY = height / 2;
  
  stroke(0);
  strokeWeight(5);
  fill(255, 30);
}

void draw() {
  
  /* 정중앙에 원을 만들고, 너비와 높이는 diam로 정하는데,*/
  ellipse(centerX, centerY, diam, diam);
  
  /* 너비를 점점 커지게 합니다. */
  diam += 10;
  
  /* 이 부분을 나머지연산이라고 합니다. */
  /* diam와, width를 나머지연산을 했을때, */
  /* diam 는 width의 값보다 커질 수 없고, 최대 width-1 의 값이 나오게 됩니다.*/
  /* 그렇기 때문에 width보다 커지지 않고 원을 만들게 됩니다. */
  /*  10 % 800은 10이 나오고, */
  /*  30 % 800은 30이 나옵니다.*/
  /*  799 % 800은 799가 나오고, */
  /*  800 % 800은 0이 나옵니다.*/
  /*  801 % 800은 1이 나옵니다.*/
  diam %= width;
}
