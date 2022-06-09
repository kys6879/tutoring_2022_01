PImage image;

void setup() {
  size(500,500);
  
  image = loadImage("ssu.jpeg");
  imageMode(CENTER);
}

void draw() {
  background(255);
  tint(#62D8A4,50);
  image(image,width/2,height/2,375,449);
}
