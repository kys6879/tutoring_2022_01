PImage image;

void setup() {
  size(500,500);
  
  image = loadImage("ssu.jpeg");
  imageMode(CENTER);
}

void draw() {
  background(255);
  
  image(image,width/2,height/2,300,300);
}
