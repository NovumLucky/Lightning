int startX = 100;
int endX = 100;
int startY = 0;
int endY = 0;
int x = 100;
void setup(){
  size(600,600);
  strokeWeight(8);
  background(0,0,0,100);
}

void draw(){
  //lightning
  while (endX > 100000);
  fill(0,0,0,50);
   rect(-100,-100,800,800);
  stroke((int)(Math.random() * 256+250),(int)(Math.random() * 256+200),(int)(Math.random() * 1), 600);
  endX = startX + (int)(Math.random()*15) - (int)(Math.random()*14);
  endY = startY + (int)(Math.random()*20);
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;

//restart simulation
void mousePressed(){
  startX = 100;
  endX = 100;
  startY = 0;
  endY = 0;

}
