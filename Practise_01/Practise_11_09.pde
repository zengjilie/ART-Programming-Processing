float radius;
int segment = 37;
float centerX;
float centerY;

void setup() {
size(600, 600);
colorMode(HSB, 100);
background(0);
noFill();
//stroke(255);
centerX = height/2;
centerY = width/2;
}

void draw() {
background(0);
// radius = dist(centerX, centerY, mouseX, mouseY);

pushMatrix();
translate(centerX, centerY);
rotate(frameCount/59.0);

radius = map(sin(frameCount/73.0), -1, 1, 30, 300);
spiral(centerX, centerY, radius, segment);

radius = map(sin(frameCount/41.0), -1, 1, 20, 300);
spiral(centerX, centerY, radius, segment);
popMatrix();

pushMatrix();
translate(centerX, centerY);
rotate(-frameCount/99.0);

radius = map(sin(frameCount/73.0), -1, 1, 30, 300);
spiral(centerX, centerY, radius, segment);

radius = map(sin(frameCount/41.0), -1, 1, 20, 300);
spiral(centerX, centerY, radius, segment);
popMatrix();
}

void spiral(float xCenter, float yCenter, float r, int seg) {
for (int i = 0; i < seg; i++) {
// float x = xCenter+cos(i*2*PI/seg)*r; //算出x的位置
// float y = yCenter+sin(i*2*PI/seg)*r; //算出y的位置

float x = cos(i*2*PI/seg)*r; //算出x的位置
float y = sin(i*2*PI/seg)*r; //算出y的位置
// fill(map(sin(frameCount/23.0), -1, 1, 0, 99), 28, 30, 50);
stroke(map(i, 0, seg, 0, 100), 80, 80, 50);
fill(map(i, 0, seg, 0, 100), 80, 80, 40);
float elementSize = map (sin(frameCount/200.0), -1, 1, 10, 100);
ellipse(x, y, elementSize, elementSize); // 畫出點，也能用其他形狀
line(x, y, 0, 0);

float x1 = cos((i+seg/3)*2*PI/seg)*r;
float y1 = sin((i+seg/3)*2*PI/seg)*r;
line(x, y, x1, y1);
}
}
