Bacteria [] colony;
 void setup()   
 {     
   size(500,500);
   colony = new Bacteria[100];
   for (int i = 0; i < colony.length; i++)
     { 
       colony[i] = new Bacteria();
     }
 }   
 void draw()   
 {    
   background(255);
   for (int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
   }
 }  
 class Bacteria    
 {     
   int x, y;
   Bacteria()
   {
     x = (int)(Math.random()*500);
     y = (int)(Math.random()*500);
   }
   void move()
   {
     if (mouseX > x && mouseY > y)
     {
       x = x + (int)(Math.random()*3);
       y = y + (int)(Math.random()*3);
     }
     else if (mouseX < x && mouseY > y)
     {
       x = x - (int)(Math.random()*3);
       y = y + (int)(Math.random()*3);
     }
     else if (mouseX > x && mouseY < y)
     {
       x = x + (int)(Math.random()*3);
       y = y - (int)(Math.random()*3);
     }
     else
     {
       x = x - (int)(Math.random()*4);
       y = y - (int)(Math.random()*4);
     }
   }
   void show()
   {
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     noStroke();
     ellipse(x,y,10,10);
   }
 }
