float centerX;
float centerY;
float radius=200;


void setup(){
 size(600,600);
 background(0);
 stroke(255);
 centerX = width/2;
 centerY = height/2;
 noFill();

 
}

void draw(){
  
 background(0);
 for (int i=0;i<24;i++){
 float X=centerX+cos(2*PI/24*i)*radius;
 float Y=centerY+sin(2*PI/24*i)*radius;
 
 pushMatrix();
 translate(X,Y);
 rotate(2*PI/24*i);
 ellipse(0,0,50,20);
 popMatrix();
 
 
 } 
 
 
}
