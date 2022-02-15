Particle p1;
Particle p2;
Particle p3; 
Particle p4; 
Particle p5; 


void setup() {
  size(600,400); 
  p1 = new Particle(100,100,55);
  p2 = new Particle(500,200,100);
  p3 = new Particle(300,100,50);
  p4 = new Particle(550,100,30);
  p5 = new Particle(200,100,20);
  
}
float x;
void draw() {
  background(0);
  if (p2.overlaps(p1)) {
  background(255,0,0);
  stroke(255);
  noFill();
   }

  
  p2.x = mouseX;
  p2.y = mouseY;
  
  p1.display();
  p2.display(); 
  p3.display(); 
  p4.display();
  p5.display(); 
}
