PImage img;
  

void setup() {
  size(600,649,P3D); 
  img = loadImage("selfie.jpg"); 
  background(0);
  imageMode(CENTER);
  
}

void draw() {
  for(int i = 0 ; i<1000 ; i++){
  float x = random(width);
  float y = random(height);
  color c = img.get(int(x),int(y));
  fill(c,25);
 
  ellipse(x,y,16,16);
  noStroke();
  }
  
  
}
