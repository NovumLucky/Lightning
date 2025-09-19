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
  //houses
      //passive clouds
    for(x = 50; x < 700; x+=100)
    {
         fill(100,100,100,10000);
   stroke(100,100,100);
      ellipse(x,20,110,70);
      ellipse(x + 10,20,100,70);
    }
  //angsty cloud
 if(startX < 700){
   fill(100,100,100,10000);
   strokeWeight(2);
   stroke(80,80,80);
    ellipse(startX,20,200,40);
    ellipse(startX,20,60,70);
    ellipse(startX + 50,20,60,50);
    ellipse(startX - 50,20,60,50);
     ellipse(startX,10,60,50);
    strokeWeight(8);
    }

   //strike zone
  if (startY > 600)
   {
     fill((int)(Math.random() * 256+250),(int)(Math.random() * 256+200),(int)(Math.random() * 1), 600);
     ellipse(startX,startY,200,200);
     if(startY > 600)
     { 
        fill(255,255,255,100);
        rect(-100,-100,800,800);
        startY = 0;
     }
       
   }
     
   
    System.out.println("startX " + startX);
 System.out.println("endX " + endX);
 System.out.println("startY " + startY);
 System.out.println("endY " + endY);
  System.out.println("X is " + x);
}
//restart simulation
void mousePressed(){
  startX = 100;
  endX = 100;
  startY = 0;
  endY = 0;

}
