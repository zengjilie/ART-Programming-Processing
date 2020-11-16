PImage img;
int smallPoint, largePoint;

void setup() {
  size(600, 649);
  img = loadImage("selfie.jpg");
  smallPoint = 1;
  largePoint = 5;
  imageMode(CENTER);
  noStroke();
  background(0);
  
  
}

void draw() { 
  float value;
  for(int i =0 ; i<1000; i++){
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  value = brightness(pix);
  float pointillize = map(value, 0, 255, 3, 2);
  fill(pix,random(255));
  rect(x, y, pointillize*8, pointillize);
  
 
  }
}
