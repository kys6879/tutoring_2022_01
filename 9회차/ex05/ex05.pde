
void setup() {
  size(500,500);
}

void draw() {
  float noiseVal;
  
  for(int x = 0; x < width; x++) { // 가로 전부
    for(int y = 0; y < height; y++) { // 세로 전부 반복
      
      if(mousePressed) { // 마우스가 눌리면
        noiseVal = noise( (mouseX +x) * 0.01 , (mouseY + y)* 0.01); // 노이즈 난수
      } else {
        noiseVal = random(width) / width; // 랜덤 난수
      }
      stroke(noiseVal * 255); // 난수는 값이 작기 떄문에 255를 곱한다. (1x255 = 255)
      point(x,y); // 점찍기
    }
  }
}
