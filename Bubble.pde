Particle p1;
Particle p2;
Particle p3; 


void setup() {
  size(600,400);
  x = width/2;
  x = height/2; 
  p1 = new Particle(100,100,50);
  p2 = new Particle(500,200,100);
  p3 = new Particle(300,100,x);
}
float x = 30;
float y = 20;
float r; {
Particle(float tempX, float tempY, float tempR); 
void draw() {
  stroke(255);
  noFill();
  background(0);
  if (p2.overlaps(p1)) {
   ellipse (x,y,r*2,r*2);
   x += 2;
   background(255,0,0);
   }

  
  p2.x = mouseX;
  p2.y = mouseY;
  
  p1.display();
  p2.display(); 
  p3.display(); 
}
