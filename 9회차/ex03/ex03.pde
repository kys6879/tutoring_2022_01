float noiseScale = 0.02;
void setup() {
  size(600,600);
}
void draw() {
  background(0);
  for (int x=0; x < width; x++) { // 600번 반복
  
    float noiseVal = noise((mouseX+x)*noiseScale, mouseY*noiseScale); 
    // x축과 y축에 따라 nose 난수 생성
    
    stroke(noiseVal*255);
    
    // x축은 고정한채로 (이러면 직선이 나옵니다.)
    // noise 난수로 선을 그립니다.
    line(x, mouseY + noiseVal * 100, x, height);
  }
}
