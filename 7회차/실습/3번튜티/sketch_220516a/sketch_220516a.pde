void setup(){

  size(800, 800);

}

 

void draw(){

  for(int i = 0; i<4; i++){

    pushMatrix();

    translate(100*i, 100);

    fill(#FF0000);

    drawRect();

    popMatrix();

  }

  

    for(int i = 1; i<5; i++){

    pushMatrix();

    fill(#FFFF00);

    translate(100*i, 300);

    drawRect();

    popMatrix();

  }

  

    for(int i = 2; i<6; i++){

    pushMatrix();

    fill(#00FF00);

    translate(100*i, 500);

    drawRect();

    popMatrix();

  }

}

 

void drawRect(){

  rect(0 ,0, 50, 50);

}
