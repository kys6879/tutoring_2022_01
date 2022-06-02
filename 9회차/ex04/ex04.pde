float time = 0.0;
float increment = 0.01;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);

  float n = noise(time) * width; // 입력값은 time.

  time += increment;  // time을 계속 증가

  fill(0);
  ellipse(width/2, height/2, n, n); // noise난수로 원의 크기를 설정
}
