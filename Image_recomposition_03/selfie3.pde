PImage img;
int smallPoint, largePoint;
PFont f;
float threshold = 80;

void setup() {
  size(1024, 576);
  img = loadImage("ballet.jpg");
  smallPoint = 2;
  largePoint = 30;
  imageMode(CENTER);
  noStroke();
  background(255);
  
  //Create the font
  printArray(PFont.list());
  
  f = createFont("Garamond", 1);
  textFont(f);
  textAlign(CENTER, CENTER);
  //noLoop();
}

void draw() {
  float value;
  color pix;

  background(0);
  int counter = 0;
  char letter;

  float threshold = map(200, 0, height, 0, 255);
  for (int x = 0; x < img.width; x+=10) {
    for (int y = 0; y < img.height; y+=10){
    pix = img.get(x, y);
    value = brightness(pix);
    if (value > threshold)
    fill(#000000);
    else fill(0);
    fill(pix);
  
    counter = int(random(65, 122));
    letter = char (counter);
    textSize(map(value, 0, 255, 1, 10));
    text(letter, x, y);
  
    }
  }

}
