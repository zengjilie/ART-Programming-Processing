int n1 = 10;
int n2 = 12;
float r1 = 200.0;
float r2 = 300.0;
float centerX;
float centerY;
float centerX1;
float centerY1;
float centerX2;
float centerY2;


void setup(){
size(1000, 1000);
background(0);
stroke(255);
centerX = height/2;
centerY = width/2;
centerX1 = centerX;
centerY1 = centerY;
centerX2 = centerX;
centerY2 = centerY;


}

void draw(){
  background(0);
  n1=(int)map(sin(frameCount/30.0),-1,1,10.0,30.0);
  n2=(int)map(sin(frameCount/40.0),-1,1,12.0,40.0);
  r1=(int)map(sin(frameCount/10.0),-1,1,150.0,250.0);
  r1=(int)map(sin(frameCount/33.0),-1,1,10.0,300.0);
  for (int i = 0; i < n1; i++)
   for (int j = 0; j < n2; j++) {
    float x1 = centerX1 + r1*cos(i*2*PI/n1);
    float y1 = centerY1 + r1*sin(i*2*PI/n1);
    float x2 = centerX2 + r2*cos(j*2*PI/n2);
    float y2 = centerY2 + r2*sin(j*2*PI/n2);
    line (x1, y1, x2, y2);

}

}
