float centerX;
float centerY;
int nLayer1 = 6;
int nLayer2 = 4;
float[] r1 ;
float[] r2 ;
float[] rotateRates;
//float[] radius;
float nSegment;
float angle;
float x;
float y;
int r=50;


void setup(){
size(700, 700);
background(0);
stroke(255);
//strokeWeight(map(sin(frameCount/19),-1,1,-8,8));
fill(255);
colorMode(HSB,100);
centerX = height/2;
centerY = width/2;

r1 = new float[nLayer1];
rotateRates = new float[nLayer1];

//noLoop();

  for (int i = 0; i< nLayer1; i++) {
  r1[i] = random(60, 260);

  rotateRates[i] = random(10.0, 20.0);
  }
  
r2 = new float[nLayer2];
rotateRates = new float[nLayer2];

  for (int j = 0; j< nLayer2; j++) {
  r2[j] = random(260, 300);
  rotateRates[j] = random(20.0, 30.0);
  }

}

void draw(){
  fill(0,0,0,25);
  rect(0,0,width,height);
  strokeWeight(map(sin(frameCount/11.0),-1,1,0,2));
  translate(centerX,centerY);
  for(int i =0; i < nLayer1 ; i++){
  drawLayer1(i);
  rotate(frameCount/map(sin(frameCount/100.0), -1.0, 1.0, 100.0, 200.0));
  } 
  for(int j =0; j < nLayer2 ; j++){
  drawLayer2(j);
  rotate(frameCount/map(sin(frameCount/100.0), -1.0, 1.0, 50.0, 100.0));
  } 
  
  fill(255);
  pushMatrix();
  rotate(frameCount/-100.0);
  nSegment = map(sin(frameCount/100.0), -1, 1, 2, 20);
  for (int i= 0; i < nSegment; i++) {
    angle = i*(PI*2.0)/nSegment;
    x = r*cos(angle);
    y = r*sin(angle);
    ellipse(x, y, 10, 10);
  }
  popMatrix();
}

void drawLayer1(int nth){
  float x;
  float y;
  int n = 24;
  for (int i = 0; i < n; i++){
    x = r1[nth]*cos(i*2*PI/n);
    y = r1[nth]*sin(i*2*PI/n);
    pushMatrix();
    translate(x,y);
    rotate(i*2*PI/n);
    int sw;
    sw = nth%3;
    switch(sw){
    case 0: 
    ellipse(6,0, 7, 3);
    case 1:
    ellipse(0,8, 5, 3);
    case 2:
    ellipse(0,8, 3, 3);
    case 8:
    ellipse(5,50,10,10);
    }
    
    popMatrix();
  }
}

void drawLayer2(int nth){
  float x;
  float y;
  int n = 90;
  for (int j = 0; j < n; j++){
    x = r2[nth]*cos(j*2*PI/n);
    y = r2[nth]*sin(j*2*PI/n);
    pushMatrix();
    translate(x,y);
    rotate(j*2*PI/n);
    line(-5,10,9,10);
    popMatrix();
  }
}


 
