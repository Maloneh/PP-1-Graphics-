class Mover {  
  
PVector location;
PVector velocity;
PVector Mlocation;
PVector Mvelocity;

  Mover() {
    location = new PVector(0,100);
    velocity = new PVector(1,0);
    Mlocation = new PVector(400,100);
    Mvelocity = new PVector (-1,0); 
}
void update (){
  location.add(velocity);
  Mlocation.add(Mvelocity);
}

void display() { 
  stroke(0); 
  fill(175); 
  ellipse(location.x, 200,20,20);
  ellipse(Mlocation.x,200,16,16);
  }
  void checkEdges() {  
    if (location.x > width) { 
      location.x = location.x * random(2);
    } else if (location.x > height) {
      location.x = location.x * random(2);
    }
  }
  void checkEdges2 () {
    if (Mlocation.x > 50) {
      Mlocation.x = Mlocation.x * random(2);
    } else if (Mlocation.x > height) {
      Mlocation.x = Mlocation.x * random(3); 
    }
  }
}
 
   
  
  
