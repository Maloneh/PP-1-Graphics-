float y = 0.0;

void draw(){
  background(204); 
  ellipse (y,50,25,25);  
  y = y + 0.5;
  if (y > height) { 
    y = 0.0; 
  }
  println(y);
}
