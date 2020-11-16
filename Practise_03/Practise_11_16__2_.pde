float radius1;
float radius2;
int segment = 100;
float centerX;
float centerY;

void setup(){
 size(600,600);
 background(0);
 stroke(255);
 centerX = height/2;
 centerY = width/2;
 colorMode(HSB,100);
}

void draw(){
  background(0);
  radius1 = 100;
  radius2 =250;
  //pushMatrix();
 // translate(centerX,centerY );
 // rotate(frameCount/13);
  spiral(centerX,centerY,50,segment);
  //popMatrix();
}
void spiral(float x_c,float y_c, float r, int seg){
    for(int i =0;i<=seg;i++){
      float x = x_c+cos(i*2*PI/seg)* radius1;  //算出x的位置
      float y = y_c+sin(i*2*PI/seg)* radius1;  //算出y的位置
      float x1 = x_c+cos((i+10)*2*PI/seg)*radius2;  //算出x的位置
      float y1 = y_c+sin((i+10)*2*PI/seg)*radius2;
      line(x,y,x1,y1);  // 畫出點，也能用其他形狀
    }
}
