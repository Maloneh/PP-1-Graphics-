Mover m1;
Mover m2; 

void setup() {
  size(800,400);
  m1 = new Mover();
  m2 = new Mover();
}

void draw() {
  background(255);
  m1.update();
  m1.display(); 
  m2.display(); 
  m2.update();
}

 
  

  
