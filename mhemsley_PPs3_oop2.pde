class Particle {
  float x, y;
  float r;
  Particle(float x_, float y_, float r_) {
    x = x_;
    y = y_;
    r = r_;
  }

  void display() {
    stroke(255);
    noFill();
    ellipse(x, y, r*2, r*2);
  }

  boolean overlaps(Particle other) {
    float d = dist(x, y, other.x, other.y);
    if (d < r + other.r) {
      return true;
    } else {
      return false;
    }
  }
}
Particle p1;
Particle p2;
Particle p3; 
Particle p4; 
Particle p5; 

void setup() {
  size(600,400); 
  p1 = new Particle(100,300,10);
  p2 = new Particle(500,100,20);
  p3 = new Particle(300,100,30);
  p4 = new Particle(550,100,40);
  p5 = new Particle(200,200,50);
  
}
void draw() {
  background(2);
  if (p2.overlaps(p3)) {
  p3.r += 50;
  
  if (p2.overlaps(p1)) { 
    p1.r += 50;
    if (p2.overlaps(p4)) { 
      p4.r += 50; 
      if (p2.overlaps(p5)){
        p5.r += 50;
      }
    }
  }
  }


  
  p2.x = mouseX;
  p2.y = mouseY;
  
  p1.display();
  p2.display(); 
  p3.display(); 
  p4.display();
  p5.display(); 
}
