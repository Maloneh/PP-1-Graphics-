float x = 0.0; 

void setup() {
  size(75,75); 
} 
void draw() { 
  background(204); 
  if (x < 25) {  
    ellipse(25,25,30,30);
  } else if (x > 25) { 
    background(204);
    ellipse(25,x,30,30); 
    x = x + 0.5; 
    }
  line (0,25,x,25);
  x += 0.25; 
}
