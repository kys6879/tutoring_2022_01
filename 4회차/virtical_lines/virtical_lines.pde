void setup() {
  size(800,600);
  frameRate(1); //<>//
}

void draw(){
  background(255);
  
  /* 정의 된  verticalLines 함수를 호출함 */
  /* 0부터 511 까지의 랜덤 숫자를 x1,y1,x2,y2에게 전달. */
  verticalLines(random(512),random(512),random(512),random(512));
}

/*  */
void verticalLines(float x1,float y1,float x2,float y2) {
  
  float x = x1;
  
  /* x, x2 는 랜덤 숫자 */
  while(x < x2) { // x1의 값을 받은 x가 x2보다 작아지는 동안에,
    
    line(x,y1,x,y2); // 일직선의 선을 그린다.
                     // 선이 시작하는 x축과 끝나느 x축이 같으니깐
                     // 일직선이 나온다.
                     
    x += 10.0;       // x를 10씩 증가시킵니다. 
                     // 그래야지 x2보다 작아질 때 까지 선을 그릴 수 있습니다. 
  }
}
