Mover m1;

void setup() {
  size(400,400);
  m1 = new Mover();
}

void draw() {
  background(255);
  m1.update();
  m1.display();
  m1.checkEdges();
  m1.checkEdges2(); 
}

 
  

  
