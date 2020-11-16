float radius;
int segment = 6;
float centerX;
float centerY;
int recursionLevel = 3;

void setup(){
 size(600,600);
 background(0);
 stroke(255);
 centerX = height/2;
 centerY = width/2;
}

void draw(){
  background(0);
  radius = dist(centerX, centerY, 350, 350);
  spiral(centerX,centerY,radius,segment, recursionLevel);
}
void spiral(float x_c,float y_c, float r, int seg,int level){
  level -= 1;
  noFill();
  ellipse(x_c,y_c,2*r,2*r);
    for(int i =0;i < seg; i++){
      float x = x_c+cos(i*2*PI/seg)*r; 
      float y = y_c+sin(i*2*PI/seg)*r;
      point(x,y); 
      ellipse(x,y,2*r,2*r);
    
      if(level > 0){
      spiral(x,y,r,seg, level);
      }
    }
}
