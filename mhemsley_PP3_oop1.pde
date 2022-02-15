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

float x;
float b = random (-50,50);
void setup() {
  size(600,400);
  p1 = new Particle(100,100,80);
  p2 = new Particle(300,200,50);
  p3 = new Particle(200,200,30);
}
void draw() {
if (p2.overlaps(p3)){
  p3.x += b;
  p3.y += b;
  background(255,0,0);
}
if (p3.overlaps(p1)){
   p1.r += 10;
   }

  
  p2.x = mouseX;
  p2.y = mouseY;
  
  p1.display();
  p2.display(); 
  p3.display(); 
}
