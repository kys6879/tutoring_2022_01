float xoff = 0.0;

void draw() {
  background(204);
  xoff = xoff + .01; // 입력값을 계속 변경
 
  float n = noise(xoff) * width; // noise 함수로 난수값 생성.
  line(n, 0, n, height); // 수직선의 위치를 그린다.
}
