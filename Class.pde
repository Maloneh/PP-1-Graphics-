class Mover {  
  
PVector location;
PVector velocity;

  Mover() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(2,0);
}
void update (){
  location.add(velocity); 
}

void display() { 
  stroke(0); 
  fill(175); 
  ellipse(location.x, 100,16,16);
  ellipse(location.x,200,16,16);
  }
  void checkEdges() {  
    if (location.x < 400) { 
      location.x = location.x;
    } else if (location.x > 400) {
      location.x = -location.x;
    }
  }
}
   
  
  
