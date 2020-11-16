float cX;
float cY;
float radius;
float segment;
float j;
float angle;
float x;
float y;
int i;

void setup(){
  size(600,600);
  background(255);
  cX=width/2;
  cY=height/2;
 
  radius=100;


}


void draw(){
  fill(0,0,0,25);
  rect(0,0,width,height);
  
  fill(255);
  noStroke();
  j=map(sin(frameCount/80.00),-1,1,2,20);
  for(int i=0;i<j;i++){
  angle=(2*PI/j)*i;
  x=cX+cos(angle)*radius;
  y=cY+sin(angle)*radius;
  ellipse(x,y,10,10);
  
  }

}
